#!/usr/bin/env bash

# all subjects with a test suite, and
# all developer fixes with a test suite
declare -a subjects=(
apache_ftpserver_clear_unsafe
apache_ftpserver_md5_unsafe
#apache_ftpserver_salted_unsafe  # no test suite
#apache_ftpserver_salted_encrypt_unsafe  # no test suite
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
#themis_tomcat_unsafe  # no test suite
#cryptomator_authfile_unsafe  # no test suite
jasypt_digestEquals_unsafe
shiro_hashEquals_unsafe
tink_multiply_unsafe

# Developer fixes in Table 2
blazer_array_dev
themis_spring-security_dev
themis_orientdb_dev
blazer_passwordEq_dev
themis_jdk_dev
blazer_login_dev
blazer_modpow2_dev
blazer_straightline_dev
github_authmreloaded_dev
themis_boot-stateless-auth_dev
themis_picketbox_dev
example_PWCheck_dev
blazer_modpow1_dev
apache_ftpserver_clear_dev
jasypt_digestEquals_dev
tink_multiply_dev
shiro_hashEquals_dev
)

run_counter=0
total_number_subjects=${#subjects[@]}

echo "Compiling regression tests for subjects"
echo

cd ../../evaluation/subjects/

for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
do
  cd ./${subjects[i]}/
  echo "[$(( $i +  1))/$total_number_subjects] Compile tests for ${subjects[i]} .."

  rm -rf evosuite-tests-bin
  mkdir evosuite-tests-bin
  cd evosuite-tests
  javac -cp ".:../../../../tool/instrumentor/build/libs/kelinci.jar:../../../../tool/pendulum/build/libs/pendulum.jar:../lib/*:../../../../tool/validation/lib/*:../bin" \
    $(find . -name '*.java') \
    -d ../evosuite-tests-bin
  cd ../..
done
