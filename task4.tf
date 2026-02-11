# Task: Create VPC with CIDR Using Terraform

resource "aws_vpc" "datacenter-vpc" {
  cidr_block = "192.168.0.0/24"
  tags = {
    Name = "datacenter-vpc"
  }
}

