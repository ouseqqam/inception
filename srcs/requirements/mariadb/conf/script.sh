#!/bin/bash

service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE"
mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'"
mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%'"
mysql -u root -e "FLUSH PRIVILEGES"
mysql -u root -e "ALTER USER '$MYSQL_ROOT'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'"
mysql -u root -e "FLUSH PRIVILEGES"
kill `cat /var/run/mysqld/mysqld.pid`
mysqld_safe