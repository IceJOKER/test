#!/bin/bash

nginx_status=`sudo service nginx status`
mysql_status=`sudo service mysql status`

if [[ $nginx_status = *"not running"* ]]
then
	echo "Starting nginx"
	sudo service nginx start
else
	echo "Nginx is already running"
fi

if [[ $mysql_status != *"running"* ]]
then
        echo "Starting mysql"
        sudo service mysql start
else
        echo "Mysql is already running"
fi

