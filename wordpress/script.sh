#!/bin/bash
apt-get update
apt-get install -y wget curl  php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip
# wget https://wordpress.org/latest.tar.gz
# tar -xvf latest.tar.gz
# rm -rf latest.tar.gz
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
chown -R www-data:www-data /var/www/html/wordpress
mv wp-config-sample.php wp-config.php
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
sed -i 's/database_name_here/wordpress/g' wp-config.php
sed -i 's/username_here/wp/g' wp-config.php
sed -i 's/password_here/1234/g' wp-config.php
sed -i 's/localhost/mariadb/g' wp-config.php
wp core install --title="Inception" --admin_user="wp" --admin_password="1234" --admin_email="ouseqqam@student.1337.ma" --url="" --allow-root
exec "$@"




#tail -f > /dev/null