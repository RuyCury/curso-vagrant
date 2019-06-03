#!/bin/bash
sudo apt-get update && \
sudo apt-get install -y mysql-server-5.7 && \
mysql -e "create user 'phpuser'@'%' identified by 'pass';"