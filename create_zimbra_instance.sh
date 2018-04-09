#!/bin/bash

source zimbra_common.sh

if [ "$ZIMBRA_CLEANUP_VOLUMES" == "1" ] ; then
	sudo chown -R $(whoami) $(pwd)/zimbra 
fi

for path in $VOL_ZIMBRA_LOG $VOL_ZIMBRA_INDEX $VOL_ZIMBRA_CONF $VOL_ZIMBRA_DB \
            $VOL_ZIMBRA_STORE $VOL_ZIMBRA_SSL \
            $VOL_ZIMBRA_CLAMAV $VOL_ZIMBRA_AMAVISD \
            $VOL_ZIMBRA_POSTFIX $VOL_ZIMBRA_POSTFIX_2 \
            $VOL_ZIMBRA_LDAP $VOL_ZIMBRA_LDAP_2 $VOL_ZIMBRA_LDAP_3 \
            $VOL_ZIMBRA_LOGGER \
            $VOL_ZIMBRA_ZIMLETS \
            $VOL_ZIMBRA_TMP \
            $VOL_ZIMBRA_ZMSTAT \
            $VOL_ZIMBRA_CRONTABS
do
            echo $path
            [ "$ZIMBRA_CLEANUP_VOLUMES" == "1" ] && echo cleanup $path && rm -rf $path 
done



#-e MAILBOX_HOST_NAME=mailbox \

docker rm -f $NAME

# 8443 - jetty https direct access
# 7072 - admin console


docker run -ti \
      -h $ZIMBRA_HOST_NAME \
      --name $NAME \
      -e ZIMBRA_DEFAULT_DOMAIN=zimbra.test \
      -e ZIMBRA_HOST_NAME=$ZIMBRA_HOST_NAME \
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
      -p 8443:8443  \
      -p 8143:143   \
      -p 8993:993   \
      \
      -v $VOL_ZIMBRA_INIT:$VOL_ZIMBRA_INIT_SESSION \
      -v $VOL_ZIMBRA_ETC:$VOL_ZIMBRA_ETC_SESSION \
      \
      -v $VOL_ZIMBRA_DB:$VOL_ZIMBRA_DB_SESSION \
      \
      -v $VOL_ZIMBRA_STORE:$VOL_ZIMBRA_STORE_SESSION \
      \
      -v $VOL_ZIMBRA_LOG:$VOL_ZIMBRA_LOG_SESSION \
      -v $VOL_ZIMBRA_LOG_2:$VOL_ZIMBRA_LOG_2_SESSION \
      -v $VOL_ZIMBRA_INDEX:$VOL_ZIMBRA_INDEX_SESSION \
      \
      -v $VOL_ZIMBRA_LDAP:$VOL_ZIMBRA_LDAP_SESSION \
      -v $VOL_ZIMBRA_LDAP_2:$VOL_ZIMBRA_LDAP_2_SESSION \
      -v $VOL_ZIMBRA_LDAP_3:$VOL_ZIMBRA_LDAP_3_SESSION \
      \
      -v $VOL_ZIMBRA_LOGGER:$VOL_ZIMBRA_LOGGER_SESSION \
      -v $VOL_ZIMBRA_SSL:$VOL_ZIMBRA_SSL_SESSION \
      -v $VOL_ZIMBRA_CLAMAV:$VOL_ZIMBRA_CLAMAV_SESSION \
      -v $VOL_ZIMBRA_AMAVISD:$VOL_ZIMBRA_AMAVISD_SESSION \
      \
      -v $VOL_ZIMBRA_POSTFIX_2:$VOL_ZIMBRA_POSTFIX_2_SESSION \
      -v $VOL_ZIMBRA_POSTFIX:$VOL_ZIMBRA_POSTFIX_SESSION \
      \
      -v $VOL_ZIMBRA_ZIMLETS:$VOL_ZIMBRA_ZIMLETS_SESSION \
      -v $VOL_ZIMBRA_TMP:$VOL_ZIMBRA_TMP_SESSION \
      -v $VOL_ZIMBRA_ZMSTAT:$VOL_ZIMBRA_ZMSTAT_SESSION \
      -v $VOL_ZIMBRA_CRONTABS:$VOL_ZIMBRA_CRONTABS_SESSION \
       \
       $IMG bash
