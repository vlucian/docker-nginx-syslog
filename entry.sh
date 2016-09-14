#!/bin/sh

nginx_conf="/etc/nginx/nginx.conf"

sed -i "s/syslog:server=.*;/syslog:server=$syslog_server;/g" "$nginx_conf"

nginx
