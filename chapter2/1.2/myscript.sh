#!/bin/bash
rivi1=2
rivi2=3
vaihto1="    listen       ${PORT_ENV_VAR};"
vaihto2="    listen  [::]:${PORT_ENV_VAR};"
if set|grep '^PORT_ENV_VAR=' >/dev/null; then
    sed -i "${rivi1}s/.*/$vaihto1/"  /etc/nginx/conf.d/default.conf
    sed -i "${rivi2}s/.*/$vaihto2/"  /etc/nginx/conf.d/default.conf
    echo "Server started in port ${PORT_ENV_VAR}"
else
    echo "Using default Nginx port 80"
fi
nginx -t
service nginx start
sleep infinity
