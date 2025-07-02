variable "db_username" {
  description = "Master username for the RDS instance"
  type        = string
}

variable "db_password" {
  description = "Master password for the RDS instance"
  type        = string
  sensitive   = true
}

variable "db_subnet_group_name" {
  description = "Subnet group name for the RDS instance"
  type        = string
}

variable "db_security_group_ids" {
  description = "List of security group IDs to assign to the RDS instance"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for the RDS DB subnet group"
  type        = list(string)
}
