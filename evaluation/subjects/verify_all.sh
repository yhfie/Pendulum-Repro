#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

VERIFY=/home/crhf/projects/pendulum/sc-fix/evaluation/scripts/verification/verify.sh

declare -a subjects=(
apache_ftpserver_clear_unsafe
apache_wss4j
blazer_array_unsafe
blazer_login_unsafe
blazer_modpow1_unsafe
blazer_modpow2_unsafe
blazer_passwordEq_unsafe
blazer_straightline_unsafe
cryptomator_authfile_unsafe
Eclipse_jetty_1
Eclipse_jetty_2
Eclipse_jetty_4
example_PWCheck_unsafe
github_authmreloaded_unsafe
jasypt_digestEquals_unsafe
rsa_modpow_1717
rsa_modpow_1964903306
rsa_modpow_834443
shiro_hashEquals_unsafe
stac_ibasys_unsafe
themis_boot-stateless-auth_unsafe
themis_jdk_unsafe
themis_oacc_unsafe
themis_openmrs-core_unsafe
themis_orientdb_unsafe
themis_picketbox_unsafe
themis_spring-security_unsafe
tink_multiply_unsafe
)

cd $SCRIPT_DIR
# for x in */; do
for x in ${subjects[@]}; do
    cd ${SCRIPT_DIR}/${x}
    rm -rf verification symdiff.log
    start=$(date "+%s.%1N")

    echo "begin $x"

    neq=$(bash $VERIFY 2>&1 | tee verify.log | awk '/FinalStats/{print $NF}' | awk -F, '{print $3}')
    end=$(date "+%s.%1N")
    elapsed=$(bc -l <<< "$end-$start")
    [ "$neq" -eq 0 ] && printf "%s passed in %s seconds\n\n" "$x" "$elapsed" || printf "%s failed in %s seconds\n\n" "$x" "$elapsed"
done
cd $SCRIPT_DIR
