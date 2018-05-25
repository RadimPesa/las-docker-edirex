#!/bin/sh
echo "Define FQDN ${HOST}" > /usr/local/apache2/conf/fqdn.conf
cat /usr/local/apache2/conf/fqdn.conf

htpasswd -c -b /usr/local/apache2/conf/.htpasswd administrator ${ADMIN_PASSWORD} 

/usr/local/bin/httpd-foreground
