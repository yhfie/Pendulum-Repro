#!/usr/bin/env bash

# all subjects that have a test suite AND a running, non-empty fix
declare -a subjects=(
#apache_ftpserver_salted_encrypt_unsafe # no test suite
#apache_ftpserver_salted_unsafe # no test suite
#cryptomator_authfile_unsafe # no test suite
#themis_tomcat_unsafe # no test suite

#themis_oacc_unsafe # no running fix
#blazer_loopandbranch_unsafe # no running fix
#jasypt_digestEquals_unsafe # no running fix
#themis_pac4j_unsafe_ext # no running fix
#themis_openmrs-core_unsafe # no running fix
#themis_orientdb_unsafe # no running fix
#shiro_hashEquals_unsafe # no running fix
#themis_pac4j_unsafe # no running fix
#blazer_unixlogin_unsafe # no running fix


#apache_ftpserver_clear_unsafe # empty fix
#apache_ftpserver_md5_unsafe # empty fix
#apache_wss4j # empty fix
#rsa_modpow_1717 # empty fix
#rsa_modpow_1964903306 # empty fix
#rsa_modpow_834443 # empty fix
#tink_multiply_unsafe # empty fix

apache_ftpserver_stringutils_unsafe
blazer_array_unsafe
blazer_gpt14_unsafe
blazer_k96_unsafe
blazer_login_unsafe
blazer_modpow1_unsafe
blazer_modpow2_unsafe
blazer_passwordEq_unsafe
blazer_sanity_unsafe
blazer_straightline_unsafe
Eclipse_jetty_1
Eclipse_jetty_2
Eclipse_jetty_3
Eclipse_jetty_4
example_PWCheck_unsafe
github_authmreloaded_unsafe
stac_ibasys_unsafe
themis_boot-stateless-auth_unsafe
themis_jdk_unsafe
themis_jetty_unsafe
themis_picketbox_unsafe
themis_spring-security_unsafe
)

rm -rf bin
mkdir bin
javac -cp "lib/*" src/Runtest.java -d bin

run_counter=0
total_number_subjects=${#subjects[@]}

echo "Running regression tests on FIXED subjects"
echo "----------"
echo "subject #pass #fail"
echo "----------"

cd ../../evaluation/diffuzzar_subjects/

for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
do
  cd ./${subjects[i]}/

  printf "%s " ${subjects[i]}

  testclass=`cat CLASS_UNDER_TEST`_ESTest

  java -cp "../../../tool/validation/lib/*:../../../tool/validation/bin:evosuite-tests-bin:bin_fixed:lib/*" Runtest $testclass

  cd ../
done
