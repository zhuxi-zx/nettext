import socket

def main(port):
    try:
        s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
        s.connect(("172.16.29.68",port))
        print("172.16.29.68 's" , port , "is open !")
        s.close()
    except Exception as e:
        pass

if __name__ == '__main__':
    for port in range(0,65535):
        main(port)
        pass
