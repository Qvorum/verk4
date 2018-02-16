import json
from bottle import *

@route('/')
def index():
    return template('index.tpl', title="Forsiða")

@route('/<filename:re.*\.css>')
def send_css(filename):
    return static_file(filename, root='css')
@route('/shit/{{x[kt]}}')
def shit():
    return template('p1.tpl', titile = "{{x[kt]}}")
skra = open('bekkur.json','r',encoding='utf-8')
b = json.load(skra)

for x in b['nemendur']:
    print(x['kt'],x['nafn'],x['braut'])


run(host='0.0.0.0', port=os.environ.get('PORT'))
