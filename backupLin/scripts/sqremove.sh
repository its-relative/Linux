#!/bin/bash

systemctl stop mysql

apt-get remove --purge mysql-server mysql-common

rm -rf /etc/mysql/ /var/lib/mysql

apt-get autoremove

apt-get autoclean

apt-get purge mysql*

apt-get install mysql-server
