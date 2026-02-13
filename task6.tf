# Task: Create Elastic IP Using Terraform

resource "aws_eip" "xfusion-eip" {
  domain = "vpc"
  tags = {
    Name = "xfusion-eip"
  }
}