#!/bin/bash

source zimbra_common.sh

ZIMBRA_VER=${ZIMBRA_VER:-8.8.9}
ZIMBRA_IMG=${ZIMBRA_IMG:-zimbra_8.8.9}

docker build -f Dockerfile_$ZIMBRA_VER -t $ZIMBRA_IMG .
