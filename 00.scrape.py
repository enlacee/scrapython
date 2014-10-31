from lxml import html
import requests

page = requests.get('http://econpy.pythonanywhere.com/ex/001.html')
tree = html.fromstring(page.text)

#this get list of buyers
buyers = tree.xpath('//div[@title="buyer-name"]/text()')
#this get list of prices
prices = tree.xpath('//span[@class="item-price"]/text()')

print 'Buyers : ', buyers
print 'Prices : ', prices
