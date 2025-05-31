resource "aws_vpc" "vpc-main" {
  cidr_block       = var.vpc_cidrblock
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true
  assign_generated_ipv6_cidr_block = false
  tags = {
    Name = "${var.environment}-vpc"
    Environment = var.environment
  }
}