import json

def lambda_handler(event, context):
    # Extract slot value safely
    slots = event['sessionState']['intent'].get('slots', {})

    order_id = None
    if slots and slots.get('orderId'):
        order_id = slots['orderId']['value']['interpretedValue']

    if not order_id:
        message = "Please provide a valid order ID."
    else:
        # Simulated business logic
        message = f"Order {order_id} is shipped and on the way!"

    return {
        "sessionState": {
            "dialogAction": {
                "type": "Close"
            },
            "intent": {
                "name": "CheckOrderStatus",
                "state": "Fulfilled"
            }
        },
        "messages": [
            {
                "contentType": "PlainText",
                "content": message
            }
        ]
    }
