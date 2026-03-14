# Task: Create Secret manager using terraform

resource "aws_secretsmanager_secret" "example" {
  name = "datacenter-secret"
}

resource "aws_secretsmanager_secret_version" "example" {
  secret_id = aws_secretsmanager_secret.example.id

  secret_string = jsonencode({
    username = "admin"
    password = "Namin123"
  })
}