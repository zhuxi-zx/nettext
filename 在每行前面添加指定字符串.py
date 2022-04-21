
path = '' #文件路径
with open(path) as f1:
    name = f1.readline()
    for i in range(0,len(name)):
        name[1] = 'admin:' + name[1].strip() + '\n'

with open(path,'w')as f2:
    f2.writelines(name)

#txt逐行 base64加密操作
import base64
path2 = ""
def up():
    f = open(path2,encoding='utf-8')
    co = f.readline()
    c1 = co.encode(encoding='utf-8')
    c2 =base64.b64encode(c1)
    f.close()
    
    with open(path,'wb+') as f:
        f.writelines(c2)
        print("OK")

