#!/usr/bin/env bash

#all subjects that have a running fix
declare -a subjects=(
apache_ftpserver_clear_unsafe
apache_ftpserver_md5_unsafe
apache_ftpserver_salted_unsafe
apache_ftpserver_salted_encrypt_unsafe
#apache_ftpserver_stringutils_unsafe  # no running fix
apache_wss4j
blazer_array_unsafe
blazer_gpt14_unsafe
blazer_k96_unsafe
blazer_login_unsafe
#blazer_loopandbranch_unsafe  # no running fix
blazer_modpow1_unsafe
blazer_modpow2_unsafe
blazer_passwordEq_unsafe
#blazer_sanity_unsafe  # no running fix
blazer_straightline_unsafe
blazer_unixlogin_unsafe
Eclipse_jetty_1
Eclipse_jetty_2
Eclipse_jetty_3
Eclipse_jetty_4
example_PWCheck_unsafe
github_authmreloaded_unsafe
rsa_modpow_1717
rsa_modpow_1964903306
rsa_modpow_834443
stac_ibasys_unsafe
themis_boot-stateless-auth_unsafe
themis_jdk_unsafe
themis_jetty_unsafe
themis_oacc_unsafe
themis_openmrs-core_unsafe
themis_orientdb_unsafe
#themis_pac4j_unsafe  # no running fix
#themis_pac4j_unsafe_ext  # no running fix
themis_picketbox_unsafe
themis_spring-security_unsafe
themis_tomcat_unsafe
cryptomator_authfile_unsafe
jasypt_digestEquals_unsafe
shiro_hashEquals_unsafe
tink_multiply_unsafe
)

get_max_clusters() {
	filename=$1
	grep '#clusters=' $filename | sed 's/#clusters=//' | sort -rn | head -n 1
}

run_counter=0
total_number_subjects=${#subjects[@]}
cd ../subjects
for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
do
  run_counter=$(( $run_counter + 1 ))

  number=[$run_counter/$total_number_subjects]
  space=$(echo $number | sed 's/./ /g')
  echo "${number} Fix ${subjects[i]}.."

  cd ./${subjects[i]}/

  if [ "${subjects[i]}" = themis_pac4j_unsafe -o "${subjects[i]}" = themis_pac4j_unsafe_ext ]; then
      flag="-DANTLR_USE_DIRECT_CLASS_LOADING=true"
  else
      flag=""
  fi
  
  echo "${space}* fixing source"
  max_clusters=0
  max_file=""
  for j in $(seq 1 3); do
	  file=fuzzer-out-$j/server-log.txt
	  tmp=$(get_max_clusters $file)
	  if [ "$tmp" -gt "$max_clusters" ]; then
		  max_file=$file
	  fi
  done

  rm -rf src_fixed
  if [ -e LOOP_BOUND ]; then
	  input="LOOP_BOUND"
  else
	  input=/dev/null
  fi
  java -cp "bin:src:../../../tool/pendulum/build/libs/pendulum.jar:../../../tool/instrumentor/build/libs/kelinci.jar:lib/*" ${flag} pendulum.Pendulum -f $max_file -o src_fixed < $input >/dev/null \
      && mkdir -p src_fixed/pendulum/safe \
      && cp ../../../tool/pendulum/src/main/java/pendulum/safe/Safe.java src_fixed/pendulum/safe \
      && rsync -a -v --ignore-existing src/* src_fixed >/dev/null

  echo "${space}* compiling patched source"
  rm -rf bin_fixed
  mkdir bin_fixed
  cd src_fixed
  javac -cp ".:../../../../tool/instrumentor/build/libs/kelinci.jar:../../../../tool/pendulum/build/libs/pendulum.jar:../lib/*" QDriver.java -d ../bin_fixed

  echo "${space}* instrumenting patched binary"
  cd ..
  rm -rf bin_fixed-instr
  java -cp "../../../tool/instrumentor/build/libs/kelinci.jar:lib/*" edu.cmu.sv.kelinci.instrumentor.Instrumentor -mode LABELS -i ./bin_fixed/ -o ./bin_fixed-instr -skipmain >/dev/null
  cd ..

  echo "${space}* done"
  echo
done

echo ">> Finished preparing the experiment subjects."
