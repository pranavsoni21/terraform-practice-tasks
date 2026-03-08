# Task: Create SNS topic using terraform

resource "aws_sns_topic" "topic" {
  name = "datacenter-notifications"
}