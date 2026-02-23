# Task: Create EBS Volume Using Terraform

resource "aws_ebs_volume" "nautilus-volume" {
  availability_zone = "us-east-1a"
  type = "gp3"
  size = 2

  tags = {
    Name = "nautilus-volume"
  }
}