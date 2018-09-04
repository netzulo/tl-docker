#!/bin/bash
###
# Testlink at docker for fast development
###
echo "Starting: php-fpm7.2"
/usr/sbin/php-fpm7.2
echo "Starting: nginx"
/usr/sbin/nginx
echo "Starting: mariadb"
/usr/bin/mysqld_safe &
echo "Generating mariadb USERS..."
sleep 15
bash /root/db_create_users.sh

if [ "$?" == "0" ]
then
    echo "Ready to works"
else
    echo "Something it's failing at start"
fi
