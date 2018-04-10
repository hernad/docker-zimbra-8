# usage

## Inicijalizacija zimbra volumena

    setenforce 0
    #ZIMBRA_CLEANUP_VOLUMES=1 - pobrisati lokalne volumene
    ZIMBRA_CLEANUP_VOLUMES=1 ./create_zimbra_instance.sh


## Pokretanje zimbra instance

     export ZIMBRA_IMG=zimbra88
     export ZIMBRA_INSTANCE_NAME=zimbra_i1
     ./run_zimbra_instance.sh
     docker logs $ZIMBRA_INSTANCE_NAME -f


## login

    [zimbra88 admin login](./docs/zimbra88.png?raw=true "zimbra login")
 

## diagnostics

     
     $ sudo docker exec -ti zimbra-88-instance

     # docker sesija
     root@706f7f6c0b15:/tmp/release# mount | grep log
     /dev/mapper/fedora-home on /opt/zimbra/log type ext4 (rw,relatime,seclabel,data=ordered)


zimbra client

https://127.0.0.1:8443


admin console:

https://127.0.0.1:7071/zimbraAdmin/
