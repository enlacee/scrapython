from lxml import html
from xml.etree.ElementTree import tostring
import requests

#page = requests.get('http://www.subingles.com/songs/view/4410')
page = requests.get('http://www.subingles.com/songs/view/8899')
tree = html.fromstring(page.text)

idImage = tree.xpath('/html/head/link[@rel="image_src"]/@href')
ID = idImage[0][26:37]
if (ID.find('/') == -1):
    insertDataWeb(ID, tree)
else:
    print 'ERROR'

# Function insert data to database mysql
def insertDataWeb(ID, tree):
    xartist = tree.xpath('/html/body/div[@id="pagewrap"]/div[@id="content"]/div[@id="titulo1"]/h1[@id="title_song"]/a[1]/text()')
    xtitle = tree.xpath('/html/body/div[@id="pagewrap"]/div[@id="content"]/div[@id="titulo1"]/h1[@id="title_song"]/text()')
    xlevel = tree.xpath('/html/body/div[@id="pagewrap"]/div[@id="content"]/div[@id="titulo1"]/h1[@id="title_song"]/a[2]/text()')
    xlyrics = tree.get_element_by_id('textori').value

    print '=====Print Scrap====='
    print 'ARTIST  :', xartist[0].replace('Canciones de ', '')
    print 'TITLE   :', xtitle[1].strip(' \t\n\r')[8:-1]
    print 'LEVEL   :', xlevel[0]
    print 'LYRICS  :', xlyrics
    return

def writeLog(n,message)
