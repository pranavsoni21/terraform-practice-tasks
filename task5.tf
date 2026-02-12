# Task: Create VPC with IPv6 Using Terraform

resource "aws_vpc" "xfusion-vpc" {
  cidr_block = "10.0.0.0/16"
  assign_generated_ipv6_cidr_block = "true"

  tags = {
    Name = "xfusion-vpc"
  }
}

output "ipv6" {
  description = "IPv6 cidr block assigned by AWS."
  value = aws_vpc.xfusion-vpc.ipv6_cidr_block
}