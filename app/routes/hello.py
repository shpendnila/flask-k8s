from flask import Blueprint, jsonify
import requests

hello_route = Blueprint('hello', __name__)


@hello_route.route('/health')
def check_health():
    return jsonify(
        {"message": "OK"}
    )


@hello_route.route('/hello')
def hello():
    response = requests.get("http://hello-world.info")
    return response.content
