#!/bin/bash

Threshold=90
Email="sathiyanarayanan2003s@gmail.com"
Hostname=$(hostname)

idle=$(top -bn1 | grep "Cpu(s)" | awk -F',' '{print $4}' | awk '{print $1}')
cpu=$(echo "100-$idle" | bc)

echo "CPU Usage: ${cpu}%"

cpu_int=${cpu%.*}

if (( cpu_int > Threshold )); then
    Subject="CPU Alert - $Hostname"
    Message="Warning: CPU usage is ${cpu}% on $Hostname. Threshold is ${Threshold}%."
    echo "Warning: CPU usage is above ${Threshold}%"
    echo "$Message" | mail -s "$Subject" "$Email"
else
    echo "CPU usage is normal (${cpu}%)"
fi