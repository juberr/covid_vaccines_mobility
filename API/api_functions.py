from joblib import dump, load
import pandas as pd
import json

scaler = load('static/6rf_scaler.joblib')
model = load('static/6rf_model.joblib')

def create_input_data(data):
    
    # turn json into a pandas df
    df = pd.read_json(data)

    return df.values

def predict_readmission(data):
    
    scaled_data = scaler.transform(data.reshape(1,-1))
    
    return tuple(model.predict_proba(scaled_data)[0])

def clean_json(json_data):
            
    for i in json_data:
        json_data[i] = [json_data[i]]
        
        
    return json.dumps(json_data)

