# Task: Create kinesis stream using terraform

resource "aws_kinesis_stream" "stream" {
  name = "datacenter-stream"
  shard_count = 1
}