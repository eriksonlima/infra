resource "aws_route_table" "rtb_pub_1" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route" "rt_pub_1" {
  route_table_id         = aws_route_table.rtb_pub_1.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw_pub.id
}

resource "aws_route_table_association" "rtb_association_pub_1" {
  subnet_id      = aws_subnet.subnet_pub_1.id
  route_table_id = aws_route_table.rtb_pub_1.id
}

resource "aws_route_table" "rtb_pub_2" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route" "rt_pub_2" {
  route_table_id         = aws_route_table.rtb_pub_2.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw_pub.id
}

resource "aws_route_table_association" "rtb_association_pub_2" {
  subnet_id      = aws_subnet.subnet_pub_2.id
  route_table_id = aws_route_table.rtb_pub_2.id
}

resource "aws_route_table" "rtb_priv_1" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route" "rt_priv_1" {
  route_table_id         = aws_route_table.rtb_priv_1.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.ngw_priv_1.id
}

resource "aws_route_table_association" "rtb_association_priv_1" {
  subnet_id      = aws_subnet.subnet_priv_1.id
  route_table_id = aws_route_table.rtb_priv_1.id
}

resource "aws_route_table" "rtb_priv_2" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route" "rt_priv_2" {
  route_table_id         = aws_route_table.rtb_priv_2.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.ngw_priv_2.id
}

resource "aws_route_table_association" "rtb_association_priv_2" {
  subnet_id      = aws_subnet.subnet_priv_2.id
  route_table_id = aws_route_table.rtb_priv_2.id
}