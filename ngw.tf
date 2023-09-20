resource "aws_eip" "ngw_1" {
  domain = "vpc"
}

resource "aws_eip" "ngw_2" {
  domain = "vpc"
}

resource "aws_nat_gateway" "ngw_1" {
  allocation_id = aws_eip.ngw_1.id
  subnet_id     = aws_subnet.subnet_pub_1.id
}

resource "aws_nat_gateway" "ngw_2" {
  allocation_id = aws_eip.ngw_2.id
  subnet_id     = aws_subnet.subnet_pub_2.id
}