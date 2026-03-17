# Task: Attach policy using terraform

# Create IAM user
resource "aws_iam_user" "user" {
  name = "iamuser_kirsty"

  tags = {
    Name = "iamuser_kirsty"
  }
}

# Create IAM Policy
resource "aws_iam_policy" "policy" {
  name        = "iampolicy_kirsty"
  description = "IAM policy allowing EC2 read actions for kirsty"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["ec2:Read*"]
        Resource = "*"
      }
    ]
  })
}

# Policy attachment
resource "aws_iam_user_policy_attachment" "attach" {
  policy_arn = aws_iam_policy.policy.arn
  user       = aws_iam_user.user.name
}