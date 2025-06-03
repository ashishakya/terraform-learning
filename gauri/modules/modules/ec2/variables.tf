variable "AWS_REGION" {
  type = string
  default = "eu-west-1"
}

variable "AWS_PROFILE" {
  type = string
  default = "proshore-terraform"
}

variable "AWS_EC2_AMI" {
  type = string
  default = "ami-03d8b47244d950bbb"
}

variable "AWS_EC2_INSTANCE_TYPE" {
  type = string
  default = "t2.micro"
}