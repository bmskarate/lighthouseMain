from flask import Flask, request, jsonify
from flask_restful import Api, Resource
import pickle 
import pandas as pd

# step 1: weapping our app
app = Flask(__name__)
api = Api(app) # wrapping our app in restful api

model = pickle.load(open('model.pkl', 'rb'))

# step 2: defing our API resources

class HelloWorld(Resource):

    def get(self):
        return {"hello":"world"} # json format


class Predict(Resource):

    def post(self):
        json_data = request.get_json()

        # for 1 observation
        df = pd.DataFrame(json_data.values(), index = json_data.keys()).transpose

        result = model.predict(df)
        return result.tolist()





# step 3: assign our endpoints

api.add_resource(HelloWorld, '/helloworld') 
api.add_resource(Predict, "/predict")





# step 4: running our api app
if __name__ == "__main__":
    app.run(debug=True)