variable "DB_USERNAME" {
  description = "The username for the RDS database"
  type        = string
}

variable "DB_NAME" {
  description = "The name of the RDS database"
  type        = string
}

variable "DB_PASSWORD" {
  description = "The password for the RDS database"
  type        = string
  sensitive   = true
}


variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "The IDs of the subnets for RDS"
  type        = list(string)
}
