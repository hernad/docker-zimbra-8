apt-get update -y
apt-get upgrade -y
FILE_BASE="zcs-8.8.9_GA_3019.UBUNTU16_64.20180809160254"
FILE_TGZ=$FILE_BASE.tgz

if [ ! -f $FILE_TGZ ] ; then
   curl -LO https://files.zimbra.com/downloads/8.8.9_GA/$FILE_TGZ
   tar xvf $FILE_TGZ
fi


cd $FILE_BASE
yes yes | ./install.sh --softwareonly

cd /
tar cvf /docker_etc/zimbra_saveconfig.tar.gz


if  /opt/zimbra/libexec/zmsetup.pl -c /init/config ; then
   # saveconfig after upgrade
   tar cvf /docker_etc/zimbra_saveconfig.tar.gz
fi
