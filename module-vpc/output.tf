output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc-main.id
  sensitive = true
  
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private_subnet[*].id
}
output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public_subnet[*].id
}


output "private_subnet_db_ids" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private_subnet_db[*].id
}

output "aws_security_group_ids" {
  description = "List of security group IDs"
  value       = aws_security_group.mysql_sg.id
  
}