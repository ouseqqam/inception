#!/bin/bash


apt-get update
apt-get install -y wget php-fpm
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm -rf latest.tar.gz

while :; do echo 'Hit CTRL+C'; sleep 1; done