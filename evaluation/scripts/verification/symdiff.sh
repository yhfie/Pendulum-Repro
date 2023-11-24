#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ "$1" == "infer" ]; then
    shift
    mono $SCRIPT_DIR/symdiff/Sources/SymDiff/bin/x86/Debug/SymDiff.exe -inferConfig $@
elif [ "$1" == "diff" ]; then
    shift
    mono $SCRIPT_DIR/symdiff/Sources/SymDiff/bin/x86/Debug/SymDiff.exe -allInOne $@ -nonmodular -localcheck -freeContracts -cex:1 -timeout:20000
elif [ "$1" == "extract" ]; then
    shift
    mono $SCRIPT_DIR/symdiff/Sources/SymDiff/bin/x86/Debug/SymDiff.exe -extractLoops $@
elif [ "$1" == "trans" ]; then
    shift
    raw="$(basename $2 .bpl)r.bpl"
    java -jar $SCRIPT_DIR/jar2bpl.jar -debug-mode -err -j "$1" -b "$raw"

    stubbed="$(sed -n -E 's#.*(fake(java(\.[[:alnum:]_]+)+)).*#\2#p' "$raw" | sort | uniq)"
    for x in $stubbed; do
        echo $x is stubbed
    done

    for x in $stubbed; do
        sed -i -E "s#(procedure|const).* ${x}.*#//\0#" "$raw" "$2"
    done
    sed -i -E "/.*fakejava.*/{h; s#fakejava#java#g; x; s#.*#//&#; G}" "$raw" "$2"

    mono $SCRIPT_DIR/symdiff/Sources/SymDiff/bin/x86/Debug/SymDiff.exe -extractLoops "$raw" "$2"

    sed -i -E "/java.lang.Class: javaType/{s#.*#//\0#}" "$raw" "$2"  # diamond inheritance causes Boogie error
elif [ "$1" == "trans_no_stub" ]; then
    shift
    raw="$(basename $2 .bpl)r.bpl"
    java -jar $SCRIPT_DIR/jar2bpl.jar -debug-mode -err -j "$1" -b "$raw"
    mono $SCRIPT_DIR/symdiff/Sources/SymDiff/bin/x86/Debug/SymDiff.exe -extractLoops "$raw" "$2"

    sed -i -E "/java.lang.Class: javaType/{s#.*#//\0#}" "$raw" "$2"  # diamond inheritance causes Boogie error
else
    >&2 echo "Please specify one of 'infer', 'diff', 'extract', 'trans'"
fi
