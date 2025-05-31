resource "aws_route_table_association" "public_route_table_association" {
  count = true ? var.countsub : 0
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = data.aws_route_table.default-route-table.id

  depends_on = [aws_internet_gateway.gw]
  
}