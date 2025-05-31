#  This file defines the public subnets for the VPC.

# available zones
#================
data "aws_availability_zones" "available" {
  state = "available"
}

# Public Subnet Configuration
#============================
resource "aws_subnet" "public_subnet" {
    count      = var.create_subnet ? var.countsub : 0
    vpc_id     = aws_vpc.vpc-main.id
    availability_zone = data.aws_availability_zones.available.names[count.index]
    cidr_block = "192.168.${count.index}.0/24"
    map_public_ip_on_launch = true

    tags = {
        Name = "${var.environment}-public-subnet-${count.index + 1}-${data.aws_availability_zones.available.names[count.index]}"
        Environment = var.environment
        "kubernetes.io/cluster/eks" = "1"
        "kubernetes.io/role/elb" = "1"
        "kubernetes.io/cluster/${var.environment}-${var.cluster_name}" = "owned"
    }
}

