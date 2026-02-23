# Task: Create AMI Using Terraform

data "aws_instance" "devops-ec2" {
}

resource "aws_ami_from_instance" "nautilus-ami" {
  name               = "nautilus-ami"
  source_instance_id = aws_instance.devops-ec2.id
}