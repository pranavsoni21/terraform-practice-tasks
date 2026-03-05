# Task: Create IAM policy using terraform

resource "aws_iam_policy" "policy" {
  name        = "iampolicy_anita"
  path        = "/"
  description = "Iam policy for read only access to ec2"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}