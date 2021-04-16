from flask import Flask, request, jsonify, make_response, render_template
import pandas as pd 
import pickle as p
import json

application = Flask(__name__)

model = p.load( open( "6rf_model.pkl", "rb" ) )
scaler = p.load( open( "6rf_scaler.pkl", "rb" ) )

@application.route('/predict', methods=['GET', 'POST'])
def hello():

    #get json from request
    req = request.get_json()

    #parse json for pandas
    for i in req:
        req[i] = [req[i]]

    #create values
    req_df = pd.DataFrame(req).values.reshape(1,-1)

    #open scaler and scale data
    scaled_data = scaler.transform(req_df)

    #open model and predict
    predictions = tuple(model.predict_proba(scaled_data)[0])


    return jsonify(result=predictions)


    

@application.route('/')
def home():
    return render_template('charts.html')


if __name__ == '__main__':
    application.debug = True
    application.run()