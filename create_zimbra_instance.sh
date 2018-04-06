#!/bin/bash


IMG=zimbra-88
NAME=zimbra-88-instance

docker rm -f $NAME

VOL_ZIMBRA_INIT=$(pwd)/init
VOL_ZIMBRA_INIT_SESSION=/init

VOL_ZIMBRA_LOG=$(pwd)/zimbra/log
VOL_ZIMBRA_LOG_SESSION=/opt/zimbra/log

VOL_ZIMBRA_CONF=$(pwd)/zimbra/conf
VOL_ZIMBRA_CONF_SESSION=/opt/zimbra/conf

VOL_ZIMBRA_DB=$(pwd)/zimbra/db/data
VOL_ZIMBRA_DB_SESSION=/opt/zimbra/db/data

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


#root@f49c5ba01677:/tmp/release# find /opt/zimbra/data/ldap
#/opt/zimbra/data/ldap
#/opt/zimbra/data/ldap/config
#/opt/zimbra/data/ldap/mdb
#/opt/zimbra/data/ldap/mdb/db
#/opt/zimbra/data/ldap/state
#/opt/zimbra/data/ldap/state/run



VOL_ZIMBRA_LOGGER=$(pwd)/zimbra/logger
VOL_ZIMBRA_LOGGER_SESSION=/opt/zimbra/logger

if [ "$ZIMBRA_CLEANUP_VOLUMES" == "1" ] ; then
	sudo chown -R $(whoami) $(pwd)/zimbra 
fi

for path in $VOL_ZIMBRA_LOG $VOL_ZIMBRA_CONF $VOL_ZIMBRA_DB \
            $VOL_ZIMBRA_STORE $VOL_ZIMBRA_SSL $VOL_ZIMBRA_CLAMAV \
            $VOL_ZIMBRA_AMAVISD $VOL_ZIMBRA_LDAP $VOL_ZIMBRA_LOGGER 
do
            echo $path
            [ "$ZIMBRA_CLEANUP_VOLUMES" == "1" ] && echo cleanup $path && rm -rf $path 
done

docker run -ti \
      --name $NAME \
      -e ZIMBRA_HOST_NAME=zimbra.zcs-foss.test \
      -e MAILBOX_HOST_NAME=mailbox \
      -e TIME_ZONE_ID=Europe\\\/Sarajevo \
      -e ADMIN_PW=test123 \
      -e LDAP_ADMIN_PW=zimbra \
      -e LDAP_AMAVIS_PW=zimbra \
      -e LDAP_POSTFIX_PW=zimbra \
      -e LDAP_REPLICATION_PW=zimbra \
      -e LDAP_ROOT_PW=zimbra \
      -e LDAP_BES_PW=zimbra \
      -e LDAP_NGINX_PW=zimbra \
      -p 7071:7071  \
      -p 8143:143   \
      -p 9443:443   \
      -p 8993:993   \
      \
      -v $VOL_ZIMBRA_INIT:$VOL_ZIMBRA_INIT_SESSION \
      \
      -v $VOL_ZIMBRA_DB:$VOL_ZIMBRA_DB_SESSION \
      -v $VOL_ZIMBRA_STORE:$VOL_ZIMBRA_STORE_SESSION \
      \
      -v $VOL_ZIMBRA_LOG:$VOL_ZIMBRA_LOG_SESSION \
      -v $VOL_ZIMBRA_CONF:$VOL_ZIMBRA_CONF_SESSION \
      -v $VOL_ZIMBRA_LDAP:$VOL_ZIMBRA_LDAP_SESSION \
      -v $VOL_ZIMBRA_LOGGER:$VOL_ZIMBRA_LOGGER_SESSION \
      -v $VOL_ZIMBRA_SSL:$VOL_ZIMBRA_SSL_SESSION \
      -v $VOL_ZIMBRA_CLAMAV:$VOL_ZIMBRA_CLAMAV_SESSION \
      -v $VOL_ZIMBRA_AMAVISD:$VOL_ZIMBRA_AMAVISD_SESSION \
       \
       $IMG bash






#     
