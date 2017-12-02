from flask import Flask, request
from oauth2client.client import GoogleCredentials
from googleapiclient import discovery
import json

app = Flask(__name__)


@app.route ('/')
def hello_world():
    return 'Hello World!'


@app.route('/get_prediction', methods=['POST'])
def get_prediction():
    if request.method == 'POST':
        data = request.data
        data_dict = json.loads(data)
        print(data_dict["input"])


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
    # GOOGLE_APPLICATION_CREDENTIALS=<path_to_service_account_file>
    service = googleapiclient.discovery.build ('ml', 'v1')
    name = 'projects/{}/models/{}'.format (project, model)

    if version is not None:
        name += '/versions/{}'.format (version)

    response = service.projects ().predict (
        name=name,
        body={'instances': instances}
    ).execute ()

    if 'error' in response:
        raise RuntimeError (response['error'])

    return response['predictions']


if __name__ == '__main__':
    app.run()
