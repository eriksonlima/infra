variable "subnet_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami" {
  type = string
  default = "value"
}

variable "key_name" {
  type = string
  default = "erikson"
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "environment" {
  type = string
  default = "hml"
}