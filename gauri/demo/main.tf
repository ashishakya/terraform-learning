provider "aws" {
  region  = "eu-west-1"
  profile = "proshore-terraform"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-03d8b47244d950bbb"
  instance_type = "t2.micro"
  tags = {
    "Name" = "My Ec2 Instance"
  }
}