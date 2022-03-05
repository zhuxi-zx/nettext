from urllib.request import urlopen

url="http://3n7d627237.qicp.vip"
resp=urlopen(url)
print(resp.read().decode("utf-8"))
