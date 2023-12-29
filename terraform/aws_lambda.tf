locals {
  iam_role_config = jsondecode(file("../iam_roles/lambda_get_health_iam_role.json"))
}

data "archive_file" "lambda_package" {
  type        = "zip"
  source_file = "../lambdas/get_health.py"
  output_path = "lambda.zip"
}

resource "aws_lambda_function" "example_lambda" {
  filename      = "lambda.zip" # Change this to the path of your deployment package
  function_name = "example-lambda-function"
  role          = aws_iam_role.lambda.arn
  handler       = "get_health.lambda_handler"
  runtime       = "python3.12" # Change this to the desired runtime

  source_code_hash = data.archive_file.lambda_package.output_base64sha256

  environment {
    variables = {
      key1 = "value1",
      key2 = "value2",
    }
  }
}

resource "aws_iam_role" "lambda" {
  name               = local.iam_role_config.role_name
  assume_role_policy = jsonencode(local.iam_role_config.assume_role_policy)
}

resource "aws_iam_role_policy_attachment" "lambda" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = aws_iam_role.lambda.name
}
