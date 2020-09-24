#! /bin/bash
freememory=$(free -mt | grep -w "Total" | awk '{print $4}')
cpu_usage=$(top -b -n 2 -d1 | grep "Cpu(s)" | tail -n1 | awk '{print $2}' | cut -d "." -f 1)
if [ $cpu_usage -ge 0 -a $freememory -ge 30 ]; then
echo "The cpu-usage is :$cpu_usage"
echo "The freememory is : $freememory"
else
 echo "the system is good"
fi
