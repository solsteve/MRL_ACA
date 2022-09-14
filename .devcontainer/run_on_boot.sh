#!/bin/bash
id > /tmp/boot.log
service ssh start >> /tmp/boot.log 2>&1
netstat -antup4  >> /tmp/boot.log 2>&1
while [ 1 ]; do
    sleep 1000
done
exit 0
