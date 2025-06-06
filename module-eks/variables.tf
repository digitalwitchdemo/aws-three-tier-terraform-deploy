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

variable "desired_size" {
  description = "Desired size of the EKS node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum size of the EKS node group"
  type        = number
  default     = 6
}

variable "min_size" {
  description = "Minimum size of the EKS node group"
  type        = number
  default     = 2 
}

variable "instance_types" {
  description = "Instance types for the EKS node group"
  type        = list(string)
  default     = ["t2.micro"]    
} 

variable "capacity_type" {
  description = "Capacity type for the EKS node group"
  type        = string
  default     = "ON_DEMAND"
}
variable "eks_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.32"
}
variable "ami_type" {
  description = "AMI type for the EKS node group"
  type        = string
  default     = "AL2_x86_64" # Use AL2_x86_64 for x86 instances, AL2_ARM_64 for ARM instances
}

variable "label_one" {
  description = "Label for the EKS node group"
  type        = string
  default     = "system"
}

# variable "subnet_ids" {
#   type = list(string)
# }
variable "public_subnet_ids" {
  type = list(string)
}
variable "private_subnet_ids" {
  type = list(string)
  description = "List of private subnet IDs"
}
variable "cluster_name" {
}

variable "repository_name" {
  
}

variable "domain-name" {}
variable "email" {}