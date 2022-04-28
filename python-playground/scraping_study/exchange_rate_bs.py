from bs4 import BeautifulSoup as BS
import requests as req

url = "https://finance.naver.com/marketindex/exchangeList.naver"
res = req.get(url)
soup = BS(res.text, "html.parser")

tds = soup.find_all("td")

""" 
BS로 했을 때

# 통화 이름
names = []
for td in tds:
    if len(td.find_all("a")) == 0:
        continue
    # 공백, 의미없는 문자열 제거
    names.append((td.get_text(strip=True)))

# 통화 금액 팔때
prices = []
for td in tds:
    if "class" in td.attrs:
        if "sale" in td.attrs["class"]:
            prices.append(td.get_text(strip=True))

 """

# CSS seclct 사용
names = []
for td in soup.select("td.tit"):
    names.append(td.get_text(strip=True))

prices = []
for td in soup.select("td.sale"):
    prices.append(td.get_text(strip=True))

# list -> dict 로 변환
result = { names:prices for names, prices in zip(names, prices) }

# 예쁘게 출력하기
for k, v in result.items():
    print(f"{k} : {v}")

"""
문자열 출력, 공백도 그대로
for s in td.strings:
    print(s)

공백 및 의미없는 문자열 제거
for s in td.stripped_strings:
    print(s)
"""