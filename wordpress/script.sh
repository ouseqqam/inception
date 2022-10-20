#!/bin/bash
apt-get update
apt-get install -y wget  php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm -rf latest.tar.gz
chown -R www-data:www-data wordpress
mv wordpress/wp-config-sample.php wordpress/wp-config.php
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
sed -i 's/database_name_here/wordpress/g' wordpress/wp-config.php
sed -i 's/username_here/wp/g' wordpress/wp-config.php
sed -i 's/password_here/1234/g' wordpress/wp-config.php
sed -i 's/localhost/mariadb/g' wordpress/wp-config.php

service php7.3-fpm start
tail -f > /dev/null