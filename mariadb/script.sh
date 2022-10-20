#!/bin/sh


service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -u root -e "CREATE USER 'wp'@'%' IDENTIFIED BY '1234';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'wp'@'%' IDENTIFIED BY '1234';"
mydsql -u root -e "FLUSH PRIVILEGES;"
mysqld_safe
tail -f > /dev/null