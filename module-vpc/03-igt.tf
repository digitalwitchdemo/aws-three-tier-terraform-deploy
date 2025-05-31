resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc-main.id

  tags = {
    Name = "${var.environment}-internet-gateway"
    Environment = var.environment
  }
}