#!/usr/bin/env bash

declare -a subjects=(
apache_ftpserver_clear_unsafe
apache_ftpserver_md5_unsafe
apache_ftpserver_salted_unsafe
apache_ftpserver_salted_encrypt_unsafe
apache_ftpserver_stringutils_unsafe
apache_wss4j
blazer_array_unsafe
blazer_gpt14_unsafe
blazer_k96_unsafe
blazer_login_unsafe
blazer_loopandbranch_unsafe
blazer_modpow1_unsafe
blazer_modpow2_unsafe
blazer_passwordEq_unsafe
blazer_sanity_unsafe
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
themis_pac4j_unsafe
themis_pac4j_unsafe_ext
themis_picketbox_unsafe
themis_spring-security_unsafe
themis_tomcat_unsafe
cryptomator_authfile_unsafe
jasypt_digestEquals_unsafe
shiro_hashEquals_unsafe
tink_multiply_unsafe

apache_ftpserver_clear_dev
apache_ftpserver_md5_dev
blazer_login_dev
blazer_sanity_dev
blazer_straightline_dev
example_PWCheck_dev
github_authmreloaded_dev
themis_jdk_dev
themis_orientdb_dev
themis_picketbox_dev
themis_spring-security_dev
cryptomator_authfile_dev
jasypt_digestEquals_dev
shiro_hashEquals_dev
tink_multiply_dev
blazer_array_dev
blazer_loopandbranch_dev
blazer_unixlogin_dev
themis_boot-stateless-auth_dev
themis_pac4j_dev
themis_pac4j_dev_ext
themis_tomcat_dev
apache_ftpserver_stringutils_dev
blazer_passwordEq_dev
blazer_k96_dev
blazer_modpow1_dev
blazer_modpow2_dev
blazer_gpt14_dev
themis_jetty_dev
apache_ftpserver_salted_dev
apache_ftpserver_salted_encrypt_dev
)

 run_counter=0
 total_number_subjects=${#subjects[@]}
 echo

 cd ../subjects

 for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
 do
   run_counter=$(( $run_counter + 1 ))
   echo "[$run_counter/$total_number_subjects] Prepare ${subjects[i]}.."

   cd ./${subjects[i]}/
   rm -rf bin
   mkdir bin
   cd src
   javac -cp ".:../../../../tool/instrumentor/build/libs/kelinci.jar:../../../../tool/pendulum/build/libs/pendulum.jar:../lib/*" *.java -d ../bin
   cd ..
   rm -rf bin-instr
   java -cp "../../../tool/instrumentor/build/libs/kelinci.jar:lib/*" edu.cmu.sv.kelinci.instrumentor.Instrumentor -mode LABELS -i ./bin/ -o ./bin-instr -skipmain
   cd ..
   echo

 done

 echo ">> Finished preparing the experiment subjects."
