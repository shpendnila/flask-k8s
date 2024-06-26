from flask import (
    Blueprint,
    Response,
    jsonify,
)
import json
import requests

hello_router = Blueprint('hello', __name__)


@hello_router.route('/health')
def check_health():
    return jsonify(
        {"message": "OK"}
    )


@hello_router.route('/hello')
def hello():
    return Response(
        response= json.dumps({"message": "Hello from k8s!"}),
        status= 200,
        content_type= "application/json",
    )


@hello_router.route('/check_web')
def get_web_info():
    # get response from nginx controller
    hello_resp = requests.get(
        "http://ingress-nginx-controller.ingress-nginx.svc.cluster.local/hello"
    )
    return hello_resp.content
