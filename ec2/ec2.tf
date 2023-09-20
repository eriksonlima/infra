data "aws_subnet" "subnet_priv_1" {
  filter {
    name   = "tag:Name"
    values = ["Subnet-Priv-1"]
  }
}

data "aws_subnet" "subnet_priv_2" {
  filter {
    name   = "tag:Name"
    values = ["Subnet-Priv-2"]
  }
}

resource "aws_instance" "ec2_test_1" {
  subnet_id     = data.aws_subnet.subnet_priv_1.id
  ami           = "ami-04cb4ca688797756f"
  instance_type = "t2.micro"
  key_name      = "erikson"
}

resource "aws_instance" "ec2_test_2" {
  subnet_id     = data.aws_subnet.subnet_priv_2.id
  ami           = "ami-04cb4ca688797756f"
  instance_type = "t2.micro"
  key_name      = "erikson"
}