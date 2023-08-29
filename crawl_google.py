import requests
from unittest.mock import patch

def get_google_html() -> str:
    url= "http://www.google.com/search?q=%s"
    html= requests.get(url % "google.com", headers={"User-Agent": "Mozilla/5.0"})
    content = html.text
    return content

if __name__ == "__main__":
    print(get_google_html())
