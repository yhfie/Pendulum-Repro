#!/usr/bin/env bash

subjects=$(find ../diffuzzar_subjects -mindepth 1 -maxdepth 1 -type d)

diffuzzar_success_msg='BE ADVISED: The corrected code may be logical flawed'
diffuzzar=./DifFuzzAR-1.1.0.jar
diffuzzar_driver=Driver_DifFuzzAR.java

# if $1 contains $2, echo 1, otherwise echo 0
contains() {
	grep -q "$2" <<< "$1" && echo 1 || echo 0
}

pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}

for subject in ${subjects}; do
	subject_name=$(basename $subject)

	# repair
	repair_log=$(java -jar ${diffuzzar} ${subject}/src/${diffuzzar_driver} 2>&1)

	if [ $(contains "$repair_log" "$diffuzzar_success_msg") == 0 ]; then
		echo '** WARNING' DifFuzzAR failed to repair ${subject_name}
		continue
	fi

	src=${subject}/src
	src_fixed=${subject}/src_fixed
	rm -rf ${src_fixed}

	python3 DifFuzzTransform.py ${src} ${src_fixed}
	if [ $? != 0 ]; then
		echo '** ERROR' Failed to transform repaired file for ${subject_name}
		continue
	fi

	rsync -av --ignore-existing ${src}/* ${src_fixed} >/dev/null

	# compile repaired version
	pushd ${subject}

	rm -rf bin_fixed
	mkdir bin_fixed
	pushd src_fixed
	rm -f ${diffuzzar_driver}
	javac -cp ".:../../../../tool/instrumentor/build/libs/kelinci.jar:../../../../tool/pendulum/build/libs/pendulum.jar:../lib/*" QDriver.java -d ../bin_fixed 2>/dev/null
	if [ $? != 0 ]; then
		echo '** WARNING' DifFuzzAR-repaired ${subject_name} does not compile
		popd
		popd
		continue
	fi
	popd

	# instrument repaired version
	rm -rf bin_fixed-instr
	java -cp "../../../tool/instrumentor/build/libs/kelinci.jar:lib/*" edu.cmu.sv.kelinci.instrumentor.Instrumentor -mode LABELS -i ./bin_fixed/ -o ./bin_fixed-instr -skipmain >/dev/null
	if [ $? != 0 ]; then
		echo '** ERROR' Failed to instrument ${subject_name}
		popd
		continue
	fi
	popd

	echo DifFuzzAR repaired ${subject_name}
done

