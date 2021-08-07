#!/bin/bash

#get network information form IpInfo.sh file
getnetinfo="$(/home/student/scripts/portfolio/week4/IpInfo.sh)"

#parse out the ip address lines only using sed
ipaddressonly=$(echo "$getnetinfo" | sed -n 's/IP/IP/p')

#Print output 
echo -e "$ipaddressonly"