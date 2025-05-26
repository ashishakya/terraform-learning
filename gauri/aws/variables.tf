variable "aws_region" {
  type = string
  default = "eu-west-1"
}

variable "aws_profile" {
  type = string
  default = "proshore-terraform"
}

variable "aws_ec2_ami" {
  type = string
  default = "ami-03d8b47244d950bbb"
}

variable "aws_ec2_instance_type" {
  type = string
  default = "t2.micro"
}