provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "my_instance" {
  ami           = var.aws_ec2_ami
  instance_type = var.aws_ec2_instance_type
  tags = {
    "Name" = "My Ec2 Instance"
  }
}