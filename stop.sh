#!/bin/bash

nginx_status=`sudo service nginx status`
mysql_status=`sudo service mysql status`

if [[ $nginx_status != *"not running"* ]]
then
	echo "Stopping nginx"
	sudo service nginx stop
else
	echo "Nginx is not running"
fi

if [[ $mysql_status = *"running"* ]]
then
        echo "Stopping mysql"
        sudo service mysql stop
else
        echo "Mysql is not running"
fi

