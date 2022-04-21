import requests
import time

url = "https://ce.mianshiya.com/"
cookie = "Hm_lvt_cc3c136b6d8ac3aab20524471d26df49=1649635469; Hm_lpvt_cc3c136b6d8ac3aab20524471d26df49=1649635469"
for i in range(1,2):
    try:
        get_html = requests.get(url,headers={'Cookie':cookie})
        print(get_html)
        f = open('data.html','w',encoding='utf-8')
        f.write(get_html.text)
        f.close()
        time.sleep(0.1)
    except Exception as e:
        pass
