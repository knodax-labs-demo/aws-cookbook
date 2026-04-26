import json

def lambda_handler(event, context):
    for record in event.get("Records", []):
        event_name = record.get("eventName")
        dynamodb = record.get("dynamodb", {})

        new_image = dynamodb.get("NewImage", {})
        old_image = dynamodb.get("OldImage", {})

        if event_name == "INSERT":
            print(f"New order created: {json.dumps(new_image)}")

        elif event_name == "MODIFY":
            print(f"Order updated. Old image: {json.dumps(old_image)}")
            print(f"Order updated. New image: {json.dumps(new_image)}")

        elif event_name == "REMOVE":
            print(f"Order deleted: {json.dumps(old_image)}")

    return {
        "statusCode": 200,
        "body": json.dumps("Stream records processed successfully")
    }
