resource "aws_secretsmanager_secret" "example_secret" {
  name = "example-secret"
}

resource "aws_secretsmanager_secret_version" "example_secret_version" {
  secret_id = aws_secretsmanager_secret.example_secret.id

  secret_string = <<EOF
{
  "api_key": "your-api-key",
  "database_password": "your-database-password"
}
EOF
}
