import json
from app import handler

def test_handler_returns_200():
    response = handler({}, {})
    assert response["statusCode"] == 200

def test_handler_returns_message():
    response = handler({}, {})
    body = json.loads(response["body"])
    assert body["message"] == "Hello from Lambda CI/CD pipeline!"
