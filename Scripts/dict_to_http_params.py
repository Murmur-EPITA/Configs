#!/usr/bin/python3

import urllib.parse
import sys
import json

string = "{" + sys.argv[1] + "}"
string.replace('\'','\"')
dic = json.loads(string)

print(urllib.parse.urlencode(dic))
