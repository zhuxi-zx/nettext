import pymysql

def main():
    db = pymysql.connect(host="172.16.29.68",user="root",password="root",db="dvwa")
    cursor = db.cursor()
    cursor.execute("select version()")
    data = cursor.fetchone()
    print("Databases Version is : ", data)
    db.close()

if __name__ == '__main__':
    main()
