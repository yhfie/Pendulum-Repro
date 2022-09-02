#!/usr/bin/env bash

# All subjects in table 2 HAVING a DEVELOPER FIX
declare -a subjects=(
#apache_wss4j  # no developer fix
#Eclipse_jetty_1  # no developer fix
#Eclipse_jetty_2  # no developer fix
#Eclipse_jetty_4  # no developer fix
#rsa_modpow_1717  # no developer fix
#rsa_modpow_1964903306  # no developer fix
#rsa_modpow_834443  # no developer fix
#stac_ibasys_unsafe  # no developer fix
#themis_oacc_unsafe  # no developer fix
#themis_openmrs-core_unsafe  # no developer fix
blazer_array_unsafe
themis_spring-security_unsafe
themis_orientdb_unsafe
blazer_passwordEq_unsafe
themis_jdk_unsafe
blazer_login_unsafe
blazer_modpow2_unsafe
blazer_straightline_unsafe
github_authmreloaded_unsafe
themis_boot-stateless-auth_unsafe
themis_picketbox_unsafe
example_PWCheck_unsafe
blazer_modpow1_unsafe
apache_ftpserver_clear_unsafe
jasypt_digestEquals_unsafe
tink_multiply_unsafe
shiro_hashEquals_unsafe
)

rm -rf bin
mkdir bin

javac -cp "lib/*" src/PerfTime.java -d bin

run_counter=0
total_number_subjects=${#subjects[@]}

echo "Measuring runtime of regression tests for DEVELOPER FIXES"
echo "----------"
echo "subject avg stddev"
echo "----------"

cd ../../evaluation/subjects/

for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
do
  subject=$(echo ${subjects[i]} | sed 's/_unsafe/_dev/')
  cd ./$subject/

  testclass=`cat CLASS_UNDER_TEST`_ESTest

  printf "%s " ${subjects[i]}

  java -Djava.compiler=NONE -cp "../../../tool/validation/lib/*:../../../tool/validation/bin:evosuite-tests-bin:bin:lib/*" PerfTime $testclass

  cd ../

done


