Thershold=90
Email=""
Hostname=$(hostname)

cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

echo "cpu Usage: $cpu%"

if ((${cpu.*} > Thershold )); then
    echo " Warning: Cpu usage is above $Thershold%"
else
   echo "Cpu usage is normal"
fi