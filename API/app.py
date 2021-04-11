from flask import Flask, request, jsonify, make_response, render_template
from flask_cors import CORS, cross_origin
import pandas as pd 
from joblib import dump, load
from api_functions import create_input_data, predict_readmission, clean_json
import json

app = Flask(__name__)
CORS(app)

@app.route('/predict', methods=['GET', 'POST'])
def hello():
    #Get the JSON from the request
    req = request.get_json()

    # Clean the JSON to be friendly to pandas
    clean_req = clean_json(req)

    # Create input data based on cleaned data
    input_data = create_input_data(clean_req)

    # predict outcome
    readm = predict_readmission(input_data)

    print(f'result: {readm}')

    return jsonify(results=readm)

@app.route('/')
def home():
    return render_template('charts.html')


if __name__ == '__main__':
    app.run(debug=True, host='localhost', port='2456')