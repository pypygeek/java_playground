from bs4 import BeautifulSoup as BS
import requests as req

url ="https://search.shopping.naver.com/search/all?query=%EA%B0%A4%EB%9F%AD%EC%8B%9C&cat_id=&frm=NVSHATC"
res = req.get(url)
soup = BS(res.text, "html.parser")

arr = soup.select("ul.list_basis div>a:first-child[title]")
for a in arr:
    print(a.get_text(strip=True))