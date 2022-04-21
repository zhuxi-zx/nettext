import hashlib

#获取一个md5加密算法对象
md = hashlib.md5()
#用提供的 字节串 更新此哈希对象(hash object)的状态。
md.update('/fllllllllllllag'.encode('utf-8'))
#NOTICE：
#update()方法需要接收的参数是一个字节对象。
#向对象中传入字节串时，必须为编码类型。可以使用字符串前b' '的方法或使用.encode('UTF-8')的方法，使字符串变为bytes类型

#以十六进制数字字符串的形式返回摘要值（哈希函数计算后生成的值就叫做摘要或者摘要值）
fact = md.hexdigest()

md = hashlib.md5()
md.update(('28873544-f412-4c69-be1d-28356d17365b' + fact).encode('utf-8'))
print(md.hexdigest())
