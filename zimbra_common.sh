#!/bin/bash


IMG=zimbra-88
NAME=zimbra-88-instance

VOL_ZIMBRA_INIT=$(pwd)/init
VOL_ZIMBRA_INIT_SESSION=/init

VOL_ZIMBRA_ETC=$(pwd)/docker_etc
VOL_ZIMBRA_ETC_SESSION=/docker_etc

VOL_ZIMBRA_LOG=$(pwd)/zimbra/log
VOL_ZIMBRA_LOG_SESSION=/opt/zimbra/log

VOL_ZIMBRA_INDEX=$(pwd)/zimbra/index
VOL_ZIMBRA_INDEX_SESSION=/opt/zimbra/index

VOL_ZIMBRA_CONF=$(pwd)/zimbra/conf
VOL_ZIMBRA_CONF_SESSION=/opt/zimbra/conf

VOL_ZIMBRA_DB=$(pwd)/zimbra/db/data
VOL_ZIMBRA_DB_SESSION=/opt/zimbra/db/data

VOL_ZIMBRA_POSTFIX=$(pwd)/zimbra/data/postfix/spool
VOL_ZIMBRA_POSTFIX_SESSION=/opt/zimbra/data/postfix/spool

VOL_ZIMBRA_POSTFIX_2=$(pwd)/zimbra/data/postfix/data
VOL_ZIMBRA_POSTFIX_2_SESSION=/opt/zimbra/data/postfix/data

VOL_ZIMBRA_STORE=$(pwd)/zimbra/store
VOL_ZIMBRA_STORE_SESSION=/opt/zimbra/store

VOL_ZIMBRA_SSL=$(pwd)/zimbra/ssl
VOL_ZIMBRA_SSL_SESSION=/opt/zimbra/ssl

VOL_ZIMBRA_CLAMAV=$(pwd)/zimbra/data/clamav/db
VOL_ZIMBRA_CLAMAV_SESSION=/opt/zimbra/data/clamav/db

VOL_ZIMBRA_AMAVISD=$(pwd)/zimbra/data/amavisd/db
VOL_ZIMBRA_AMAVISD_SESSION=/opt/zimbra/data/amavisd/db

VOL_ZIMBRA_LDAP=$(pwd)/zimbra/data/ldap/mdb/db
VOL_ZIMBRA_LDAP_SESSION=/opt/zimbra/data/ldap/mdb/db

VOL_ZIMBRA_LDAP_2=$(pwd)/zimbra/data/ldap/config
VOL_ZIMBRA_LDAP_2_SESSION=/opt/zimbra/data/ldap/config

VOL_ZIMBRA_LDAP_3=$(pwd)/zimbra/data/ldap/state
VOL_ZIMBRA_LDAP_3_SESSION=/opt/zimbra/data/ldap/state

VOL_ZIMBRA_ZIMLETS=$(pwd)/zimbra/zimlets-deployed
VOL_ZIMBRA_ZIMLETS_SESSION=/opt/zimbra/zimlets-deployed

VOL_ZIMBRA_TMP=$(pwd)/zimbra/data/tmp
VOL_ZIMBRA_TMP_SESSION=/opt/zimbra/data/tmp

VOL_ZIMBRA_COMMON=$(pwd)/zimbra/cmmmon/conf
VOL_ZIMBRA_COMMON_SESSION=/opt/zimbra/common/conf

VOL_ZIMBRA_COMMON_2=$(pwd)/zimbra/cmmmon/etc
VOL_ZIMBRA_COMMON_2_SESSION=/opt/zimbra/common/etc

VOL_ZIMBRA_ZMSTAT=$(pwd)/zimbra/zmstat
VOL_ZIMBRA_ZMSTAT_SESSION=/opt/zimbra/zmstat

VOL_ZIMBRA_CRONTABS=$(pwd)/zimbra/crontabs
VOL_ZIMBRA_CRONTABS_SESSION=/var/spool/cron/crontabs

#root@f49c5ba01677:/tmp/release# find /opt/zimbra/data/ldap
#/opt/zimbra/data/ldap
#/opt/zimbra/data/ldap/config
#/opt/zimbra/data/ldap/mdb
#/opt/zimbra/data/ldap/mdb/db
#/opt/zimbra/data/ldap/state
#/opt/zimbra/data/ldap/state/run


VOL_ZIMBRA_LOGGER=$(pwd)/zimbra/logger
VOL_ZIMBRA_LOGGER_SESSION=/opt/zimbra/logger

ZIMBRA_HOST_NAME=zimbra-1.zimbra.test
