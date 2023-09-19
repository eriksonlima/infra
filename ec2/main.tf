terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "lab-project-1"
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

data "aws_subnet" "subnet_priv_1" {
  id = aws_subnet.subnet_priv_1.id
}

data "aws_subnet" "subnet_priv_2" {
  id = aws_subnet.subnet_priv_2.id
}