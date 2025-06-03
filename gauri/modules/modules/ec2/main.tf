provider "aws" {
  region  = var.AWS_REGION
  profile = var.AWS_PROFILE
}

resource "aws_instance" "my_instance" {
  ami           = var.AWS_EC2_AMI
  instance_type = var.AWS_EC2_INSTANCE_TYPE
  tags = {
    "Name" = "Web Server"
  }
}
