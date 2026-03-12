# Task: Create openstream using terraform

resource "aws_opensearch_domain" "example" {
  domain_name = "datacenter-es"
}