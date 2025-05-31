variable "vpc_cidrblock" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
  
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "staging"
  
}

variable "create_subnet" {
  description = "Flag to create a subnet"
  type        = bool
  default     = true
}

variable "countsub" {
  description = "Number of subnets to create"
  type        = number
  default     = 2
  
}
variable "create_elastic_ip" {
  description = "Flag to create Elastic IPs"
  type        = bool
  default     = true
}
variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "eks-cluster"
}

