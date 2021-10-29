# file to query against my flask
# python test file to test locally

import requests as r


base_url = 'http://127.0.0.1:5000/' # api on cloud may have different base. base url local host


json_data = {
"age":42,
"sex":1,
"cp":1,
"trestbps":120,
"chol":295,
"fbs":0,
"restecg":1,
"thalach":162,
"exang":0,
"oldpeak":0.0,
"slope":2,
"ca":0,
"thal":2
}


# get response

# response = r.get(base_url + "helloworld") # have to add helloworld because in our app.py
response = r.post(base_url + "predict", json = json_data)

# test response

if response.status_code == 200:
    print('...')
    print('Request successful')
    print("...")
    print(response.json())
else:
    print("request failed")