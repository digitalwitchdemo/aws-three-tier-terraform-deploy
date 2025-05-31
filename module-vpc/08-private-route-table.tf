resource "aws_route_table" "private_route_table" {
  count = true ? var.countsub : 0
  vpc_id = aws_vpc.vpc-main.id

  tags = {
    Name = "${var.environment}-private-route-table-${count.index + 1}"
    Environment = var.environment
  }
}

resource "aws_route" "private_route" {
  count = true ? var.countsub : 0
  route_table_id = aws_route_table.private_route_table[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.name[count.index].id
}   