#!/usr/bin/env bash
echo "counting non-blank LoC in files"
echo "subject original dev ourtool"

loc() {
	sed '/^\s*$/d' "$1" | wc -l | awk '{{print $1}}'
}

cd reformatted
for x in $(ls -d ./*); do
	subject=$(echo $x | sed 's#./##')
	orig_file=$(find $subject -name "*_unsafe.java")
	fix_file=$(find $subject -name "*_fix.java")
	dev_file=$(find $subject -name "*_dev.java")

	orig_loc=$(loc "$orig_file")
	fix_loc=$(loc "$fix_file")
	if [ ! -z "$dev_file" ]; then
		dev_loc=$(loc $dev_file)
	else
		dev_loc=-
	fi
	echo $subject $orig_loc $dev_loc $fix_loc

done
