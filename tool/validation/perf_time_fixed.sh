#!/usr/bin/env bash

# All subjects in table 2
declare -a subjects=(
apache_ftpserver_clear_unsafe
apache_wss4j
blazer_array_unsafe
blazer_login_unsafe
blazer_modpow1_unsafe
blazer_modpow2_unsafe
blazer_passwordEq_unsafe
blazer_straightline_unsafe
Eclipse_jetty_1
Eclipse_jetty_2
Eclipse_jetty_4
example_PWCheck_unsafe
github_authmreloaded_unsafe
rsa_modpow_1717
rsa_modpow_1964903306
rsa_modpow_834443
stac_ibasys_unsafe
themis_boot-stateless-auth_unsafe
themis_jdk_unsafe
themis_oacc_unsafe
themis_openmrs-core_unsafe
themis_orientdb_unsafe
themis_picketbox_unsafe
themis_spring-security_unsafe
jasypt_digestEquals_unsafe
shiro_hashEquals_unsafe
tink_multiply_unsafe
)

rm -rf bin
mkdir bin

javac -cp "lib/*" src/PerfTime.java -d bin

run_counter=0
total_number_subjects=${#subjects[@]}

echo "Measuring runtime of regression tests for FIXED subjects"
echo "----------"
echo "subject avg stddev"
echo "----------"

cd ../../evaluation/subjects/

for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
do
  cd ./${subjects[i]}/

  testclass=`cat CLASS_UNDER_TEST`_ESTest

  printf "%s " ${subjects[i]}

  java -Djava.compiler=NONE -cp "../../../tool/validation/lib/*:../../../tool/validation/bin:evosuite-tests-bin:bin_fixed:lib/*" PerfTime $testclass

  cd ../

done


