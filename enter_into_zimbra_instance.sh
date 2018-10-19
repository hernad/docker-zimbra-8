#!/bin/bash

if [ -z "$ZIMBRA_INSTANCE_NAME" ] ; then
   echo "definisati ZIMBRA_INSTANCE_NAME"
   exit 1
fi

docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmcontrol -v"'

docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmzimletctl listZimlets all"'

docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmcertmgr viewdeployedcrt"'

docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmprov gs ''$ZIMBRA_SERVER'' zimbraMtaMyNetworks; /opt/zimbra/bin/zmprov gs ''$ZIMBRA_SERVER'' zimbraMtaRelayHost"'

docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmprov gs ''$ZIMBRA_SERVER'' zimbraImapSSLBindPort"'


docker exec  $ZIMBRA_INSTANCE_NAME \
   /bin/bash -c 'su zimbra -c "/opt/zimbra/bin/zmprov zmprov gac -v | grep zimbraFeatureMailForwardingEnabled"'


docker exec  -ti \
       $ZIMBRA_INSTANCE_NAME \
       /bin/bash

