#!/usr/bin/python3

import json
import sys
import urllib.parse

'''
# USE:

## INPUT
openid.pape.max_auth_age=0&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&accountStatusPolicy=DEFAULT&language=en_US

## OUTPUT
{
    "openid.pape.max_auth_age": "0",
    "openid.identity": "http://specs.openid.net/auth/2.0/identifier_select",
    "accountStatusPolicy": "DEFAULT",
    "language": "en_US"
}
'''

def delist(value):
    while isinstance(value, list) and len(value) == 1:
        value = value[0]
    if value == []:
        value = ""
    return value

def url_params_to_dict(url):
    inputString = url
    tmp = urllib.parse.parse_qs(inputString)
    return {k: delist(v) for k, v in tmp.items()}

url = sys.argv[1]
params_dict = url_params_to_dict(url)
print(json.dumps(params_dict, indent=4))

#print(urllib.parse.parse_qs(sys.argv[1]))
