#!/bin/bash

Threshold=80
Email="sathiyanarayanan2003s@gmail.com"
Hostname=$(hostname)
date=$(date '+%Y-%m-%d %H:%M:%S')

idle=$(top -bn1 | grep "Cpu(s)" | awk -F',' '{print $4}' | awk '{print $1}')
cpu=$(echo "100-$idle" | bc)
cpu=$(printf "%.1f" "$cpu")

echo "CPU Usage: ${cpu}%"

cpu_int=${cpu%.*}

if (( cpu_int > Threshold )); then
    Subject="CPU Alert - $Hostname"
    Message="Warning: CPU usage is ${cpu}% on $Hostname. Threshold is ${Threshold}%."
    echo "$date Warning: CPU usage is above ${Threshold}%"
    echo "$Message" | mail -s "$Subject" "$Email"
else
    echo " $date CPU usage is normal (${cpu}%)"
    echo "$date"
fi