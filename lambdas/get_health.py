import json


def lambda_handler(event, context):
    print("this change worked")

    return {
        "statusCode": 200,
        "headers": {"Content-Type": "application/json"},
        "body": json.dumps("Hello from Lambda!"),
    }
