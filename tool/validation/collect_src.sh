#!/usr/bin/env bash

# Copies classes-under-test to count_loc/original

# All subjects in Table 2
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

run_counter=0
total_number_subjects=${#subjects[@]}

dest=$(dirname $(readlink -f classes_under_test))/count_loc/original

cd ../../evaluation/subjects/

for (( i=0; i<=$(( $total_number_subjects - 1 )); i++ ))
do
	subject=${subjects[i]}

	testsrc=$(cat $subject/CLASS_UNDER_TEST | sed 's#\.#/#g').java
	basename=$(basename $testsrc .java)

	tmp=$dest/$subject
	mkdir -p $tmp
	rm -rf $tmp/*

	cp $subject/src/$testsrc $tmp/${basename}_unsafe.java
	cp $subject/src_fixed/$testsrc $tmp/${basename}_fix.java
	
	subject_dev=$(echo $subject | sed 's/_unsafe/_dev/')
	if [  -d $subject_dev  -a  $subject_dev != $subject  ]; then
		cp $subject_dev/src/$testsrc $tmp/${basename}_dev.java
	fi
done
