#!/bin/bash
forever=0
nginx -t
service nginx start
ranString=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 20)
date1=$(date +%d-%m-%Y--%H:%M:%S)
while [ $forever=0 ]
do
    log="${date1}--${ranString}"
    echo "$log"
    echo "$log" > /var/www/html/index.html
    ranString=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 20)
    date1=$(date +%d-%m-%Y--%H:%M:%S)
    sleep 5
done
