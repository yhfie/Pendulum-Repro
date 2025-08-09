#!/usr/bin/env bash

number_of_runs=3 # 3 repetitions for each subject
time_bound=900 # 1800 sec = 30 min

kValue=100
driver="pendulum.DriverMain"

n_cores=8  # maximum allowed parallelism

port=7006
free_port_beyond() { # find a free port beyond $1
	tmp_port=$(( $1 + 1 ))
	while [ `nc -z localhost $tmp_port && echo "USED" || echo "FREE"` = "USED" ]; do
		tmp_port=$(( $tmp_port + 1 ))
	done
	echo $tmp_port
}

#all subjects
declare -a subjects=(
apache_ftpserver_clear_unsafe
apache_ftpserver_md5_unsafe
apache_ftpserver_salted_unsafe
apache_ftpserver_salted_encrypt_unsafe
# apache_ftpserver_stringutils_unsafe
# apache_wss4j
# blazer_array_unsafe
# blazer_gpt14_unsafe
# blazer_k96_unsafe
# blazer_login_unsafe
# blazer_loopandbranch_unsafe
# blazer_modpow1_unsafe
# blazer_modpow2_unsafe
# blazer_passwordEq_unsafe
# blazer_sanity_unsafe
# blazer_straightline_unsafe
# blazer_unixlogin_unsafe
# Eclipse_jetty_1
# Eclipse_jetty_2
# Eclipse_jetty_3
# Eclipse_jetty_4
# example_PWCheck_unsafe
# github_authmreloaded_unsafe
rsa_modpow_1717
rsa_modpow_1964903306
rsa_modpow_834443
stac_ibasys_unsafe
# themis_boot-stateless-auth_unsafe
# themis_jdk_unsafe
# themis_jetty_unsafe
# themis_oacc_unsafe
# themis_openmrs-core_unsafe
# themis_orientdb_unsafe
# themis_picketbox_unsafe
# themis_spring-security_unsafe
# cryptomator_authfile_unsafe
# jasypt_digestEquals_unsafe
# shiro_hashEquals_unsafe
# tink_multiply_unsafe
# pac4j and tomcat use a database. No two instances 
# of pac4j can be fuzzed simultaneously. Ditto tomcat.
# Fuzz these lastly.
# themis_pac4j_unsafe
# themis_pac4j_unsafe_ext
# themis_tomcat_unsafe
)

run_counter=0
total_number_subjects=${#subjects[@]}
total_number_experiments=$(( $total_number_subjects * $number_of_runs ))

echo "Run QFuzz on all subjects..."

cd ../subjects

unfinished_counter=0
unfinished_pid=""

for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
do
  cd ./${subjects[i]}/
  for j in `seq 1 $number_of_runs`
  do
    run_counter=$(( $run_counter + 1 ))

	port=`free_port_beyond $port`
	cpu_mask=`printf "%x" $((2 ** ((run_counter-1) % n_cores)))`

	number=[$run_counter/$total_number_experiments]
	echo "${number} Launch fuzzing for ${subjects[i]}, round $j (port $port, cpu mask $cpu_mask) .."

	out_dir="fuzzer-out"
    mkdir -p ${out_dir}-$j/

    # Start Kelinci server
	taskset $cpu_mask nohup timeout $(( time_bound + 15 )) java -cp "./bin-instr/:../../../tool/pendulum/build/libs/pendulum.jar:./lib/*" edu.cmu.sv.kelinci.Kelinci -port $port -K ${kValue} ${driver} QDriver @@ > ${out_dir}-$j/server-log.txt 2>&1 &
	kelinci_pid=$!  # this is also pgid, as `timeout` starts a process group of its own

    sleep 5 # Wait a little bit to ensure that server is started

    # Start modified AFL
	export AFL_SKIP_CPUFREQ=1
	export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1 
    taskset $cpu_mask nohup timeout $time_bound ../../../tool/afl-2.51b-qfuzz/afl-fuzz -i in_dir -o ${out_dir}-$j -c quantify -K ${kValue} -S afl -t 999999999 ../../../tool/fuzzerside/interface -p $port -K ${kValue} @@ > ${out_dir}-$j/afl-log.txt 2>&1 &
	afl_pid=$!  # ditto
	unset AFL_SKIP_CPUFREQ
	unset AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES

	echo "$(echo $number | sed 's/./ /g') Kelinci pgid $kelinci_pid, AFL pgid $afl_pid (kill with \`kill -9 -$kelinci_pid -$afl_pid\`)"

	with_db=$((echo ${subjects[i]} | grep -E 'themis_pac4j|themis_tomcat' >/dev/null) && echo with_db || echo without_db)
	if [ "$with_db" = with_db ]; then
		echo
		echo "wait for ${subjects[i]}, round $j (pgid $kelinci_pid, $afl_pid)"
		echo
		wait $kelinci_pid $afl_pid
	else
		unfinished_counter=$(( unfinished_counter + 1))
		unfinished_pid="${unfinished_pid}$kelinci_pid $afl_pid "
		remainder=$((unfinished_counter % n_cores))
		if [ $remainder = 0 ]; then
			echo 
			echo "all cores occupied; waiting for previous fuzzing campaigns to end ($unfinished_pid)..."
			echo
			wait $unfinished_pid
			unfinished_counter=0
			unfinished_pid=""
		fi
	fi

  done
  cd ../

done

