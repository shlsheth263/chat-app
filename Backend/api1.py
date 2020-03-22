from flask import Flask, jsonify, request
import json
import sys
import basic

app = Flask(__name__)

@app.route('/<query>', methods = ['GET', 'POST'])

#@app.route('/<query>/<videoID>', methods = ['GET'])

def getJSON(query):
    temp = {"query": query}
    basic.run(query)
    return (json.dumps(temp))

# driver function
if __name__ == '__main__':

	app.run(host='127.0.0.1', port='4000', threaded=True, debug = True)
