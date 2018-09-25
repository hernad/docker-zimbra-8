#!/bin/bash


docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmcontrol -v"'

docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmzimletctl listZimlets all"'

docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmcertmgr viewdeployedcrt"'



docker exec  -ti \
       $ZIMBRA_INSTANCE_NAME \
       /bin/bash

