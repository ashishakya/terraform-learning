terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

//That long string is the name (key) of an AWS Systems Manager (SSM)
// Parameter Store entry that Canonical publishes,
// which always holds the current Ubuntu 20.04 LTS AMI ID
// for the given virtualization and storage type
// in whatever region you query it from.
data "aws_ssm_parameter" "ubuntu_20_04" {
  name = "/aws/service/canonical/ubuntu/server/20.04/stable/current/amd64/hvm/ebs-gp2/ami-id"
}

provider "aws" {
  region = "eu-west-1"
  profile = "proshore-terraform" //<name of the aws cli profile>
}

resource "aws_instance" "example" {
  ami           = data.aws_ssm_parameter.ubuntu_20_04.value
  instance_type = "t2.micro"
}