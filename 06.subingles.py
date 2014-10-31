# subingles
# http://www.subingles.com/exercises/mode/8532/
# http://www.subingles.com/songs/view/4359

from lxml import html
from xml.etree.ElementTree import tostring
import requests

# Function insert data to database mysql
def getDataWebSong(ID, url, tree):
    xartist = tree.xpath('/html/body/div[@id="pagewrap"]/div[@id="content"]/div[@id="titulo1"]/h1[@id="title_song"]/a[1]/text()')
    xtitle = tree.xpath('/html/body/div[@id="pagewrap"]/div[@id="content"]/div[@id="titulo1"]/h1[@id="title_song"]/text()')
    xlevel = tree.xpath('/html/body/div[@id="pagewrap"]/div[@id="content"]/div[@id="titulo1"]/h1[@id="title_song"]/a[2]/text()')
    xlyrics = tree.get_element_by_id('textori').value
    artist = xartist[0].replace('Canciones de ', '')
    title = xtitle[1].strip(' \t\n\r')[8:-1]
    level = xlevel[0]
    lyrics = xlyrics

    dictx = {}
    dictx['id'] = ID
    dictx['idweb'] = url
    dictx['title'] = title + '-' + artist
    dictx['level'] = level
    dictx['lyrics'] = lyrics    
    return dictx

# Function print logs
def writeLog(message = '*'):
    fo = open("06.subingles.log", "a")
    fo.tell();
    fo.write(message + '\n')
    fo.close()
    return message


####################################################
# Init App
####################################################
idweb = '8899'
url = 'http://www.subingles.com/songs/view/' + idweb
page = requests.get(url)
tree = html.fromstring(page.text)
idImage = tree.xpath('/html/head/link[@rel="image_src"]/@href')
ID = idImage[0][26:37]

if (ID.find('/') == -1):     
    getDataWebSong(ID, url, tree);
    print writeLog('OK : ' + url)
else:
    print writeLog('FAIL : ' + url)    
