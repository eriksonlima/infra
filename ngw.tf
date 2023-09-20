resource "aws_eip" "nat_gateway_1" {
  instance = aws_nat_gateway.ngw.id
}

resource "aws_eip" "nat_gateway_2" {
  instance = aws_nat_gateway.ngw.id
}

resource "aws_nat_gateway" "ngw_1" {
  allocation_id = aws_eip.nat_gateway_1.id
  subnet_id     = aws_subnet.subnet_pub_1.id
}

resource "aws_nat_gateway" "ngw_2" {
  allocation_id = aws_eip.nat_gateway_2.id
  subnet_id     = aws_subnet.subnet_pub_2.id
}