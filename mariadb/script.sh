#!/bin/bash

service mysql start 
mysqld_safe
tail -f > /dev/null