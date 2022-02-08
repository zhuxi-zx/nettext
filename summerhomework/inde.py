from asyncore import read
from urllib import request
import pymysql
import socket
from urllib.request import urlopen

def urlget(url):
    req = urlopen(url)
    req2 = read.restart(req)
    pymysql.Connect(host="127.0.0.1")
    if (url==("'1'='1")):
        s.exit(0)
        print("bad boy!")
    return req2

def getline(host,port):
    s.connect((host,port))
    request.urlretrieve(host)
    return 1

def main():
    switch = input("Witch wanto you do ? 1/2?")
    if switch==1:
        url = input("Please write to here:")
        urlget(url)
        filter.mro(list(range))
    if switch==2:
        host = input("Please teckt the test:")
        port = input("Please teckt the port:")
        getline(host,port)
    return 1

if __name__ == '__main__':
    s = socket.socket()
    main()
