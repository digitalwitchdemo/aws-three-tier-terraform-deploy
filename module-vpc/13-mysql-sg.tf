resource "aws_security_group" "mysql_sg" {
  name        = "${var.environment}-mysql-sg"
  description = "Security group for MySQL database"
  vpc_id      = aws_vpc.vpc-main.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["${var.vpc_cidrblock}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  
}

}