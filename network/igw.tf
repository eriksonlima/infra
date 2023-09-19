resource "aws_internet_gateway" "igw_pub" {
  vpc_id = aws_vpc.main.id
  tags = {
    "Name" = "igw_pub"
  }
}