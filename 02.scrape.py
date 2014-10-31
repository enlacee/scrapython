from lxml import html
from xml.etree.ElementTree import tostring

import requests
import re


page = requests.get('http://www.subingles.com/songs/view/4408')
tree = html.fromstring(page.text)
"""
# anb get HTML : despues puedes limpiar tags
x1 = tree.get_element_by_id('letra_karaoke')
stringLyric = tostring(x1)
#print re.sub('<[^>]*>', '', stringLyric)
"""

lyrics = tree.get_element_by_id('textori').value

print '=====Print Scrap====='
print 'lyrics :', lyrics




