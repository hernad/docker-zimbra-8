#!/bin/bash


IMG=zimbra-88

NAME=zimbra-88-instance

docker rm -f $NAME

docker run -ti \
      --name $NAME \
      -e ZIMBRA_HOST_NAME=zimbra.zcs-foss.test \
      -e MAILBOX_HOST_NAME=mailbox \
      -e TIME_ZONE_ID=Europe\/Sarajevo \
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
      -v $(pwd)/zimbra:/zimbra \
      -v $(pwd)/log:/opt/zimbra/log \
      -v $(pwd)/config:/opt/zimbra/config \
       $IMG bash

