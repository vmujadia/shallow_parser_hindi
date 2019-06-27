import os
import sys
import time
from flask import request
from flask import Flask, jsonify

app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False

@app.route('/')
def index():
    return "Hello, World from LTRC!"

@app.route('/shallow_parse_hin', methods=['POST'])
def create_task():
    if not request.json or not 'text' in request.json:
        abort(400)
    path = '/root/outputs/'
    file_name = str(time.time()).replace('\.','')
    file_path = os.path.join(path, file_name)
    
    with open(file_path, 'w', encoding='utf-8') as the_file:
        the_file.write(request.json['text'])
 
    output_file_path = os.path.join(path, file_name+'.text')
    print (request.json['text'].encode('utf-8'))
    os.system("shallow_parser_hin <" +file_path+ " > "+output_file_path)
    with open(output_file_path, 'r',encoding='utf-8') as file:
        data = file.read()
    print (data.encode('utf-8'))
    #task = {
    #    'shallow_parsed': data
    #}
    #tasks.append(task)
    return jsonify({'shallow_parsed': data}), 201

#file_ = sys.argv[1]

#os.system("shallow_parser_hin <" +file_+ " > "+file_+".text")


if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0',port=8000)
