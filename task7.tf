# Task: Create EC2 Instance Using Terraform

# Generate RSA private key
resource "tls_private_key" "devops-key" {
  algorithm = "RSA"
  rsa_bits = 2048
}

# Create AWS key-pair
resource "aws_key_pair" "devops-kp" {
  key_name = "devops-kp"
  public_key = tls_private_key.devops-key.public_key_openssh
}

# Getting default security group
data "aws_security_group" "default_sg" {
  name = "default"
}

# Creating EC2 instance
resource "aws_instance" "devops-ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  key_name = aws_key_pair.devops-kp.key_name
  vpc_security_group_ids = [data.aws_security_group.default_sg.id]
  tags = {
    Name = "devops-ec2"
  }
}

