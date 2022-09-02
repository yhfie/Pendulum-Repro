#!/usr/bin/env bash

declare -a subjects=(
#apache_ftpserver_clear_unsafe
#apache_ftpserver_md5_unsafe
#apache_ftpserver_salted_unsafe
#apache_ftpserver_salted_encrypt_unsafe
#apache_ftpserver_stringutils_unsafe
#apache_wss4j
#blazer_array_unsafe
#blazer_gpt14_unsafe
#blazer_k96_unsafe
#blazer_login_unsafe
#blazer_loopandbranch_unsafe
#blazer_modpow1_unsafe
#blazer_modpow2_unsafe
blazer_passwordEq_unsafe
#blazer_sanity_unsafe
#blazer_straightline_unsafe
#blazer_unixlogin_unsafe
#Eclipse_jetty_1
#Eclipse_jetty_2
#Eclipse_jetty_3
#Eclipse_jetty_4
#example_PWCheck_unsafe
#github_authmreloaded_unsafe
#rsa_modpow_1717
#rsa_modpow_1964903306
#rsa_modpow_834443
#stac_ibasys_unsafe
#themis_boot-stateless-auth_unsafe
#themis_jdk_unsafe
#themis_jetty_unsafe
#themis_oacc_unsafe
#themis_openmrs-core_unsafe
#themis_orientdb_unsafe
#themis_pac4j_unsafe
#themis_pac4j_unsafe_ext
#themis_picketbox_unsafe
#themis_spring-security_unsafe
#themis_tomcat_unsafe
#cryptomator_authfile_unsafe
#jasypt_digestEquals_unsafe
#shiro_hashEquals_unsafe
#tink_multiply_unsafe
)

function join_by {
  local d=${1-} f=${2-}
  if shift 2; then
    printf %s "$f" "${@/#/$d}"
  fi
}

echo "Generate test suite with EvoSuite for all subjects..."

run_counter=0
total_number_subjects=${#subjects[@]}

cd ../../evaluation/subjects/

for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
do
  cd ./${subjects[i]}/
  echo "[$(( $i + 1))/$total_number_subjects] Create tests for ${subjects[i]} .."

  # Compile subject
  rm -rf bin
  mkdir bin
  cd src
  javac -cp ".:../../../../tool/instrumentor/build/libs/kelinci.jar:../../../../tool/pendulum/build/libs/pendulum.jar:../lib/*" \
    *.java -d ../bin
  cd ..

  class_under_test=$(cat CLASS_UNDER_TEST)
  jars=$(find lib -type f 2>/dev/null)
  class_path=bin:$(join_by : $jars)
  ## Call EvoSuite to generate tests.
  java -jar ../../../tool/validation/lib/evosuite-1.2.0.jar \
	-Duse_separate_classloader=false \
	-class $class_under_test \
	-projectCP "$class_path"

  rm -rf evosuite-report
  echo
  cd ../

done
