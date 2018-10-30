import requests
import json
from tinydb import TinyDB, Query

db = TinyDB('db.json')
if not db.all():
    db.insert({'count':1})
else:
    db.update({'count': db.all()[0]['count'] + 1})

data = {'value':db.all()[0]['count'],"auth_token":"YOUR_AUTH_TOKEN"}

print(db.all()[0]['count'])

response = requests.post('http://127.0.0.1:3030/widgets/breaks', data=json.dumps(data))