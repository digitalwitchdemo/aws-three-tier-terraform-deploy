variable "environment" {
  description = "Deployment environment name"
  type        = string
}

variable "db_instance_class" {
  description = "Instance class for the RDS database"
  type        = string
}

variable "db_allocated_storage" {
  description = "Storage allocated to the DB instance (in GB)"
  type        = number
}

# variable "db_subnet_group_name" {
#   description = "Name of the DB subnet group"
#   type        = string
# }

variable "db_username" {
  description = "Username for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "aws_security_group_ids" {
  description = "List of security group IDs for the database"
  type        = string
}
variable "private_subnet_db_ids" {
  description = "List of private subnet IDs for the database"
  type        = list(string)
}

