Threshold=90
Hostname=$(hostname)

disk_usage=$(df -h / | awk 'NR==2 {gsub("%","",$5);print $5}')

if (( disk_usage > Threshold )); then
      echo "Warning: $Hostname disk usage is above $Threshold% - current usage: $disk_usage%"
else
    echo " $Hostname disk_usage is normal $disk_usage"
fi
