apt-get update -y
apt-get upgrade -y
FILE_TGZ=zcs-8.8.9_GA_3019.UBUNTU16_64.20180809160254.tgz
curl -LO https://files.zimbra.com/downloads/8.8.9_GA/$FILE_TGZ
tar xvf $FILE_TGZ

