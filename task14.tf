# Task: Create a iam user using terraform

resource "aws_iam_user" "user" {
  name = "iamuser_mariyam"
}