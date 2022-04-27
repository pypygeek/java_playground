import requests as req
import re

url = "https://finance.naver.com/marketindex/"
res = req.get(url)
body = res.text

"""
() : 캡쳐
[] : 이 중 아무거나
. : 아무거나
* : 0개이상
+ : 1개이상
? : 없을 수도
/ : 위 특수 기호 무효화
"""

# DOTALL = 모든것을 포함해 ?== 가장 적은 범위
r = re.compile(r"h_lst.*?blind\">(.*?)</span>.*?value\">(.*?)</", re.DOTALL)
captures = r.findall(body)

print("------")
print("환율 계산기")
print("------")
print("")

for c in captures:
    print(c[0] + " : " + c[1])

print()
usd = float(captures[0][1].replace(",",""))
won = input("달러로 바꾸길 원하는 금액(원)을 입력해주세요 : ")
won = int(won)

dollar = won / usd
dollar = int(dollar)

print(f"{dollar} 달러 환전되었습니다.")
