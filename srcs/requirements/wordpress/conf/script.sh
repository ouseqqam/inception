#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
chown -R www-data:www-data /var/www/html/wordpress
mv wp-config-sample.php wp-config.php
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
sed -i 's/database_name_here/'${WORDPRESS_DB_NAME}'/' wp-config.php
sed -i 's/username_here/'${WORDPRESS_DB_ADMIN}'/' wp-config.php
sed -i 's/password_here/'${WORDPRESS_DB_ADMIN_PASSWORD}'/g' wp-config.php
sed -i 's/localhost/'${WORDPRESS_DB_HOST}'/' wp-config.php
wp core install --title="Inception" --admin_user=$WORDPRESS_DB_ADMIN --admin_password=$WORDPRESS_DB_ADMIN_PASSWORD --admin_email="ouseqqam@student.1337.ma" --url="https://ouseqqam.42.fr" --allow-root
wp user create $WORDPRESS_DB_USER "t@gmail.com" --user_pass=$WORDPRESS_DB_USER_PASSWORD --allow-root

/usr/sbin/php-fpm7.3 -F