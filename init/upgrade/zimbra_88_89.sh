apt-get update -y
apt-get upgrade -y
FILE_BASE="zcs-8.8.9_GA_3019.UBUNTU16_64.20180809160254"
FILE_TGZ=$FILE_BASE.tgz

cd /init/upgrade

if [ ! -f $FILE_TGZ ] ; then
   curl -LO https://files.zimbra.com/downloads/8.8.9_GA/$FILE_TGZ
   tar xvf $FILE_TGZ
fi


cd $FILE_BASE
yes yes | ./install.sh --softwareonly

cd /
tar cvf /docker_etc/zimbra_saveconfig.tar.gz /opt/zimbra/.saveconfig


if  /opt/zimbra/libexec/zmsetup.pl -c /init/config ; then
   cd /
   # saveconfig after upgrade
   tar cvf /docker_etc/zimbra_saveconfig.tar.gz /opt/zimbra/.saveconfig

   tar cfz /docker_etc/jetty_base.tar.gz /opt/zimbra/jetty_base/
   tar cfz /docker_etc/cache_debconf.tar.gz /var/cache/debconf
fi


#
