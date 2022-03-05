import threading
import time

# 为线程定义一个函数
def print_time( threadingName, delay):
   count = 0
   while count < 5:
      time.sleep(delay)
      count += 1
      print("%s: %s" % ( threadingName, time.ctime(time.time()) ))

# 创建两个线程
try:
   threading.start_new_threading( print_time, ("Threading-1", 2, ) )
   threading.start_new_threading( print_time, ("Threading-2", 4, ) )
except:
   print("Error: unable to start thread")

while 1:
   pass

if __name__ == '__main__':
   pass
