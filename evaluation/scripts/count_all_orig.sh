#!/usr/bin/env bash

number_of_runs=3 # 1 repetitions for each subject

get_max_partitions() {
	log_file=$1
	grep -Po '#clusters=\K[0-9]+' $log_file | sort -rn | head -n 1
}

#all subjects
declare -a subjects=(
apache_ftpserver_clear_unsafe
apache_ftpserver_md5_unsafe
apache_ftpserver_salted_unsafe
apache_ftpserver_salted_encrypt_unsafe
apache_ftpserver_stringutils_unsafe
apache_wss4j
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

out_dir="fuzzer-out"
total_number_subjects=${#subjects[@]}

cd ../subjects

for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
do
  cd ./${subjects[i]}/
  max_clusters=-1
  for j in `seq 1 $number_of_runs`
  do
	  n=`get_max_partitions ${out_dir}-$j/server-log.txt`
	  if [ "$n" -gt "$max_clusters" ]; then
		  max_clusters=$n
	  fi
  done
  echo ${subjects[i]} $max_clusters
  cd ../
done

