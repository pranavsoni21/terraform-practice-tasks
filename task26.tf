# Task: Attach elastic ip using terraform

# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  subnet_id     = "subnet-2df032fc9609c761f"
  vpc_security_group_ids = [
    "sg-a977ed22415f77e78"
  ]

  tags = {
    Name = "xfusion-ec2"
  }
}

# Provision Elastic IP
resource "aws_eip" "ec2_eip" {
  tags = {
    Name = "xfusion-ec2-eip"
  }
}

resource "aws_eip_association" "example" {
  instance_id = aws_instance.ec2.id
  allocation_id = aws_eip.ec2_eip.id
}