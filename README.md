# usage


    # setenforce 0
    # ./run_zimbra.sh
    # docker sesija
    # /zimbra/init-zimbra



## diagnostics

     
     $ sudo docker exec -ti zimbra-88-instance

     # docker sesija
     root@706f7f6c0b15:/tmp/release# mount | grep log
     /dev/mapper/fedora-home on /opt/zimbra/log type ext4 (rw,relatime,seclabel,data=ordered)


zimbra client

https://127.0.0.1:9443


admin console:

https://127.0.0.1:7071/zimbraAdmin/