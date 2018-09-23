#!/bin/bash


docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmcontrol -v"'


docker exec  -ti \
       $ZIMBRA_INSTANCE_NAME \
       /bin/bash

