#!/bin/bash
apt-get update
apt-get install -y wget  php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm -rf latest.tar.gz
# /usr/sbin/php-fpm7.3 -F
service php7.3-fpm start
tail -f > /dev/null