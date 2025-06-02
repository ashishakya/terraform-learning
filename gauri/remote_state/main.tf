terraform {
  backend "s3" { // backend is something where you store your state remotely
    bucket  = "ashishakya-terraform-state"
    key     = "dev/terraform.tfstate" // path for the terraform.tfstate file
    region  = "eu-west-1"
    profile = "proshore-terraform"
  }
}
provider "aws" {
  region  = "eu-west-1"
  profile = "proshore-terraform"
}

resource "aws_instance" "aws_ec2" {
  ami           = "ami-03d8b47244d950bbb"
  instance_type = "t2.micro"
  tags = {
    "Name" = "my-instance"
  }
}