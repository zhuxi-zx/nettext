import requests
import time


url = "https://172.16.29.68/"
cookie = "UM_distinctid=17fc92fc5bd1fd-0e40537933b164-5617195f-e1000-17fc92fc5be244; security_level=1; 4BbB_2132_saltkey=xd77St5d; 4BbB_2132_lastvisit=1649231928; CNZZDATA1280971588=1535221277-1648347800-%7C1649641527; ASP.NET_SessionId=q1pqrrxvnhlk4sn4lv3054nj"
try:
    post_data = {"__EVENTTARGET": "",
                 "__EVENTARGUMENT": "",
                 "__VIEWSTATE": "/wEPDwUKMTk3ODU4Njg2OQ9kFgICAw9kFgICAQ9kFgQCAQ8PFgIeBFRleHQFJeaxn+iLj+ecgVhYWFjmnLrmnoTph4fotK3nrqHnkIbns7vnu58WAh4Fc3R5bGUFIWZvbnQtc2l6ZTozMnB4O2xldHRlci1zcGFjaW5nOjJweGQCEQ9kFgQCAQ8PFgIfAAUZ5rGf6IuP55yBWFhYWOacuuaehCAgICAgIGRkAgMPDxYCHwBlZGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgEFCGltZ0xvZ2luBHCkO9lMpW3l1OyScwTakp8wgV001LBbtlrs80HqEjk=",
                 "__VIEWSTATEGENERATOR": "CA0B0334",
                 "__EVENTVALIDATION": "/wEdAASg8ZYL/iHye1R62cYLbTYMhI6Xi65hwcQ8/QoQCF8JIahXufbhIqPmwKf992GTkd2b6ytdYlmpcwh93+1Dk3woMchgeso1qDfBMjRWbGacCPK/UoFvVFbdKsGgYB4c7LQ=",
                 "tbUserName": "username",
                 "tbPassword": "pass",
                 "imgLogin.x": 62,
                 "imgLogin.y": 33,
                 }
    proxies = {"https": "172.16.29.68"}
    post_html = requests.post(url, data=post_data, headers={'Cookie': cookie}, proxies=proxies)
    print(post_html)
    strprint = str(post_html.text)
    name = "1.html"
    f = open(str(name), "w", encoding="utf-8")
    f.write(str(strprint))
    f.close()
except Exception as e:
    pass
