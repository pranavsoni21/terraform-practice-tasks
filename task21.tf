# Task : Setup cloud watch using terraform

resource "aws_cloudwatch_log_group" "example" {
  name = "datacenter-log-group"
}

resource "aws_cloudwatch_log_stream" "example" {
  log_group_name = aws_cloudwatch_log_group.example.name
  name           = "datacenter-log-stream"
}