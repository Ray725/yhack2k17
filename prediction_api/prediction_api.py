from flask import Flask, request, Response, jsonify
from oauth2client.client import GoogleCredentials
from googleapiclient import discovery
import json

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello World!'


@app.route('/get_prediction', methods=['POST', 'GET'])
def get_prediction():
    data = request.data
    if not data:
        return "NoData"

    data_dict = json.loads(data)
    instance = [data_dict["employment"], data_dict["peopleCovered"], data_dict["annualIncome"], data_dict["employment"], 0 if data_dict["maritalSelection"][0] is "no" else 1, data_dict["height"], data_dict["weight"], 0 if data_dict["tobaccoSelection"][0] is "no" else 1, data_dict["highRiskCount"], data_dict["mediumRiskCount"], data_dict["lowRiskCount"], 0 if data_dict["genderAssignedAtBirthSelection"][0] is "male" else 1, data_dict["age"], data_dict["latitude"], data_dict["longitude"]]

    print(predict_json("autoplan-187816", "pricesv2", {"input": instance}, "v2"))
    return "Success\n"


def predict_json(project, model, instances, version=None):
    """Send json data to a deployed model for prediction.

    Args:
        project (str): project where the Cloud ML Engine Model is deployed.
        model (str): model name.
        instances ([Mapping[str: Any]]): Keys should be the names of Tensors
            your deployed model expects as inputs. Values should be datatypes
            convertible to Tensors, or (potentially nested) lists of datatypes
            convertible to tensors.
        version: str, version of the model to target.
    Returns:
        Mapping[str: any]: dictionary of prediction results defined by the
            model.
    """
    # Create the ML Engine service object.
    # To authenticate set the environment variable
    GOOGLE_APPLICATION_CREDENTIALS="/Users/nahumgetachew/Downloads/credentials.json"

    service = discovery.build('ml', 'v1')
    name = 'projects/{}/models/{}'.format(project, model)

    if version is not None:
        name += '/versions/{}'.format(version)

    response = service.projects().predict(
        name=name,
        body={'instances': instances}
    ).execute ()

    if 'error' in response:
        raise RuntimeError(response['error'])

    return response['predictions']


if __name__ == '__main__':
    app.run()
