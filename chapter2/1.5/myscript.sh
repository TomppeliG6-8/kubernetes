#!/bin/bash
rivi1=5
rivi2=1
vaihto1="Listen ${PORT_ENV_VAR}"
vaihto2="<VirtualHost *:${PORT_ENV_VAR}>"
if set|grep '^PORT_ENV_VAR=' >/dev/null; then
    sed -i "${rivi1}s/.*/$vaihto1/"  /etc/apache2/ports.conf
    sed -i "${rivi2}s/.*/$vaihto2/"  /etc/apache2/sites-enabled/000-default.conf
    echo "Server started in port ${PORT_ENV_VAR}"
else
    echo "Using default Apache2 port 80"
fi
service apache2 start
service apache2 reload
sleep infinity
