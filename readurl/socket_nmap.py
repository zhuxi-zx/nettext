import socket
import threading

def nmap(host,login,final):
    s = socket.socket()
    for port in range(login,final):
        try:
            s.connect((host,port))
            print(host ," 's",port,"is open !")
            s.close()
        except Exception as e:
            pass

class myThread (threading.Thread):
    def __init__(self, threadID, name, counter):
        threading.Thread.__init__(self)
        self.threadID = threadID
        self.name = name
        self.counter = counter
    def run(self):
        nmap("172.16.29.68",1,65535) 

class myThread2 (threading.Thread):
    def __init__(self, threadID, name, counter):
        threading.Thread.__init__(self)
        self.threadID = threadID
        self.name = name
        self.counter = counter
    def run(self):
        nmap("172.16.101.45",1,65535)

threadLock = threading.Lock()
threads = []
 
# 创建新线程
thread1 = myThread(1, "Thread-1", 1)
thread2 = myThread2(2, "Thread-2", 2)
 
# 开启新线程
thread1.start()
thread2.start()
 
# 添加线程到线程列表
threads.append(thread1)
threads.append(thread2)
 