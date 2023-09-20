resource "aws_nat_gateway" "ngw_priv_1" {
  subnet_id         = aws_subnet.subnet_priv_1.id
  connectivity_type = "private"
}

resource "aws_nat_gateway" "ngw_priv_2" {
  subnet_id         = aws_subnet.subnet_priv_2.id
  connectivity_type = "private"
}