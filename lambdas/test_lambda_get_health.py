import json
import pytest
from unittest.mock import MagicMock, patch
from .get_health import lambda_handler


@pytest.fixture
def lambda_event():
    # Define a sample Lambda event for testing
    return {
        "key1": "value1",
        "key2": "value2",
    }


def test_lambda_handler(lambda_event):
    # Mock any external dependencies or services used by your Lambda function
    # For example, if your Lambda function uses an AWS service, you can mock the service calls.

    # Example: Mocking an AWS service call using the boto3 library
    mock_boto3_client = MagicMock()
    with patch("boto3.client", return_value=mock_boto3_client):
        # Call the Lambda handler with the mocked event
        result = lambda_handler(lambda_event, None)

    # Assert the result or any side effects
    assert result == {
        "statusCode": 200,
        "headers": {"Content-Type": "application/json"},
        "body": json.dumps("Hello from Lambda!"),
    }  # Replace "expected_result" with the expected output

    # Example: Assert that the mocked service call was made with the expected parameters
    # mock_boto3_client.some_method.assert_called_once_with("expected_parameter")


# Add more test cases as needed
