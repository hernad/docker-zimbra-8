
docker inspect -f "{{ .Mounts }}" zimbra_i1

<pre>
[
{bind  /home/hernad/docker-zimbra-88/init /init   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/data/postfix/data /opt/zimbra/data/postfix/data   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/system_log /var/log   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/data/tmp /opt/zimbra/data/tmp   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/index /opt/zimbra/index   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/redolog /opt/zimbra/redolog   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/data/ldap/state /opt/zimbra/data/ldap/state   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/log /opt/zimbra/log   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/data/clamav/db /opt/zimbra/data/clamav/db   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/common/etc /opt/zimbra/common/etc   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/crontabs /var/spool/cron/crontabs   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/store /opt/zimbra/store   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/db/data /opt/zimbra/db/data   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/data/postfix/spool /opt/zimbra/data/postfix/spool   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/logger /opt/zimbra/logger   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/zimlets-deployed /opt/zimbra/zimlets-deployed   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/common/conf /opt/zimbra/common/conf   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/conf /opt/zimbra/conf   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/ssh /etc/ssh   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/data/ldap/config /opt/zimbra/data/ldap/config   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/ssl /opt/zimbra/ssl   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/docker_etc /docker_etc   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/zmstat /opt/zimbra/zmstat   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/data/ldap/mdb/db /opt/zimbra/data/ldap/mdb/db   true rprivate} 
{bind  /home/hernad/docker-zimbra-88/zimbra/data/amavisd/db /opt/zimbra/data/amavisd/db   true rprivate}
]
</pre>
