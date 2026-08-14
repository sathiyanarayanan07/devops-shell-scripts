#!/bin/bash

service=docker
Hostname=$(hostname)
Timestamp=(date "+%Y-%m-%d %H:%M:%s")

if systemctl is-active --quiet $service; then
    echo "$Timestamp $service service is running on $Hostname"
else 
    echo "$Timestamp  Warning: $service service is not running on $Hostname"
fi