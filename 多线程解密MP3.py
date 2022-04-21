import os
import multiprocessing
import subprocess

os.chdir("文件位置")

def cmdcall(num):
    cmd = f"Decode.exe -X -P {num} 1.mp3 {num} {num}"
    subprocess.call(cmd,shell=True)

if __name__ == "__main__":
    for i in range(1,20000):
        pool = multiprocessing.Pool(4)
        pool.apply_async(cmdcall,[i, ])
        pool.close()