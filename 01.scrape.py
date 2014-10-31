from lxml import html
import requests
from pprint import pprint

page = requests.get('http://localhost/sites/scrap/scrape_01.html')
tree = html.fromstring(page.text)


# anb
title = tree.xpath('/html/head/title/text()')
print '=====Print Scrap====='
print 'Title :', title

