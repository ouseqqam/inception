#!/bin/bash

service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress"
mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%'"
mysql -u root -e "FLUSH PRIVILEGES;"
service mysql stop
mysqld_safe

# tail -f > /dev/null