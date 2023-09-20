resource "aws_subnet" "subnet_priv_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false
  tags = {
    "Name" = "Subnet-Priv-1"
  }
}

resource "aws_subnet" "subnet_priv_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = false
  tags = {
    "Name" = "Subnet-Priv-2"
  }
}

resource "aws_subnet" "subnet_pub_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "Subnet-Pub-1"
  }
}

resource "aws_subnet" "subnet_pub_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1c"
  tags = {
    "Name" = "Subnet-Pub-2"
  }
}

data "aws_subnet" "subnet_priv_1" {
  id = aws_subnet.subnet_priv_1.id
}

data "aws_subnet" "subnet_priv_2" {
  id = aws_subnet.subnet_priv_2.id
}