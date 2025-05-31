
resource "aws_db_subnet_group" "mysql_subnet_group" {
  name       = "${var.environment}-mysql-subnet-group"
  subnet_ids = var.private_subnet_db_ids
  tags = {
    Name        = "${var.environment}-mysql-subnet-group"
    Environment = var.environment
  }
}
resource "aws_db_instance" "mysql_db_instance" {
  identifier              = "${var.environment}-mysql-db"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = var.db_instance_class
  allocated_storage       = var.db_allocated_storage
  storage_type            = "gp2"
  db_subnet_group_name    = aws_db_subnet_group.mysql_subnet_group.name
  vpc_security_group_ids  = [var.aws_security_group_ids]
  username                = var.db_username
  password                = var.db_password
  db_name                 = var.db_name
  skip_final_snapshot     = true

  tags = {
    Name        = "${var.environment}-mysql-db-instance"
    Environment = var.environment
  }

  lifecycle {
    ignore_changes = [password]
  }
  
}