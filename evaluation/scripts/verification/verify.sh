#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ver="verification"

if [ -d "$ver" ] && [ -n "$(find "$ver" -type f)" ]; then
	echo >&2 "'verification/' exists and is non-empty; remove it and retry."
	exit 1
fi

src_dir="src"
fix_src_dir="src_fixed"
bin_dir="bin"
fix_bin_dir="bin_fixed"

ver_bin_dir="${ver}/bin"
fix_ver_bin_dir="${ver}/bin_fixed"
safe_dir="sg"

jar2bpl_jar="$SCRIPT_DIR/jar2bpl.jar"
symdiff_exe="$SCRIPT_DIR/symdiff/Sources/SymDiff/bin/x86/Debug/SymDiff.exe"

rel_unsafe_raw_bpl="unsafe_raw.bpl"
rel_fix_raw_bpl="fixed_raw.bpl"
rel_unsafe_bpl="unsafe.bpl"
rel_fix_bpl="fixed.bpl"
rel_ver_cfg="verify.cfg"
unsafe_bpl="${ver}/${rel_unsafe_bpl}"
fix_bpl="${ver}/${rel_fix_bpl}"
unsafe_raw_bpl="${ver}/${rel_unsafe_raw_bpl}"
unsafe_fix_bpl="${ver}/${rel_fix_raw_bpl}"
ver_cfg="${ver}/${rel_ver_cfg}"
rel_ver_log="symdiff.log"

symdiff_sh=$SCRIPT_DIR/symdiff.sh

echo "=> Compiling unsafe and fixed java files"
(set -x; make compile)
(set -x; make compile_fixed)
echo

echo "=> Copying class files to verification/"
(set -x; mkdir -p "${ver}")
(set -x; cp -r "$bin_dir" "$ver_bin_dir")
(set -x; cp -r "$fix_bin_dir" "$fix_ver_bin_dir")
echo

echo "=> Removing unchanged class files"
for file in $(find "$fix_ver_bin_dir" -type f); do
	relative="$(realpath --relative-to "$fix_ver_bin_dir" "$file")"
	orig_file="$ver_bin_dir/$relative"

	if [ -e "${orig_file}" ]; then
		if diff "${file}" "${orig_file}" >/dev/null; then
            (set -x; rm -f "${file}" "${orig_file}")
		fi
	fi
done
echo

trans_command=trans_no_stub

if [ -d stubs ]; then
    echo "=> Compiling stubs"
    pushd stubs >/dev/null
    (set -x; mvn clean compile)
    popd >/dev/null

    echo "=> Copying stubs over"
    (set -x; rsync -avz stubs/target/classes/* $ver_bin_dir)
    (set -x; rsync -avz stubs/target/classes/* $fix_ver_bin_dir)
    echo

    trans_command=trans
fi

if [ -f TRANS_OPTIONS ]; then
    trans_options="$(cat TRANS_OPTIONS)"
else
    trans_options=""
fi

pushd "$ver" >&/dev/null && echo "=> Entering directory $ver/\n"

echo "=> Translating bytecode to Boogie with jar2bpl"
(set -x; bash -x $symdiff_sh "$trans_command" ../"$ver_bin_dir" "$rel_unsafe_bpl" $trans_options >&unsafe2bpl.log)
(set -x; bash -x $symdiff_sh "$trans_command" ../"$fix_ver_bin_dir" "$rel_fix_bpl" $trans_options >&fixed2bpl.log)
echo

if [ -f ../precondition.json ]; then
    echo "=> Adding preconditions"
    while read -r line; do
        proc=$(awk -F@ '{print $1}' <<< "$line" )
        contract=$(awk -F@ '{print $2}' <<< "$line" )
        (set -x; sed -i "/\<procedure $proc\>/{:loop;n;/^[[:space:]]*$/s#\$#$contract#;t;b loop}" "$rel_unsafe_bpl" "$rel_fix_bpl")
    done <<< $(jq -r 'to_entries | map(.value |= (map(.) | add)) | map(.key + "@" + .value) | .[]' ../precondition.json)
    echo
fi

echo "=> Inferring verification config using Symdiff"
(set -x; $symdiff_sh infer "$rel_unsafe_bpl" "$rel_fix_bpl" >& "${rel_ver_cfg}")
echo 

echo "=> Diffing with Symdiff; results will be dumped to $rel_ver_log"
if [ -f DIFF_OPTIONS ]; then
  options="$(cat DIFF_OPTIONS)"
else
  options=""
fi

if [ -f ../SYNTAX_EQ_PROCS ]; then
    options="${options} -synEq:../SYNTAX_EQ_PROCS"
fi

if [ -f ../FORCE_CHECK_PROCS ]; then
    options="${options} -forceCheck:../FORCE_CHECK_PROCS"
fi

(set -x; $symdiff_sh diff "$rel_unsafe_bpl" "$rel_fix_bpl" "$rel_ver_cfg" $options >& "${rel_ver_log}")
popd >&/dev/null && echo "Leaving directory $ver/"
echo

stats="$(tail -n 1 "${ver}/${rel_ver_log}")"
echo "$stats"
echo

numbers="$( <<< "$stats" sed -nE 's/FinalStats:.*= \((.*)\)/\1/p')"
procs="$(<<< "$numbers" cut -d, -f1)"
cex_neq_crash="$(<<< "$numbers" cut -d, -f2-4)"
if [ "$cex_neq_crash" != "0,0,0" ] || [ "$procs" -eq 0 ] ; then
    echo "Verification failed"
    exit 1
fi

echo "Verification passed"
