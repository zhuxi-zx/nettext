from wsgiref import headers
import requests
for i in range(1000):
    data = ("test=test")
    header = {"header":"dasd"}
    x =requests.post("http://",data=data,headers=header)
    print(x)