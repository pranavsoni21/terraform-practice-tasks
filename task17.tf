# Task: Create a dynamodb table using terraform

resource "aws_dynamodb_table" "table" {
  hash_key = "devops_id"
  name     = "devops-users"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "devops_id"
    type = "S"
  }
}