# Task: Create IAM group using terraform

resource "aws_iam_group" "group" {
  name = "iamgroup_james"
}