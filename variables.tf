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

# variable "ACCESS_KEY" {
#   description = "AWS Access Key"
#   type        = string
#   sensitive   = true
# }

# variable "SECRET_KEY" {
#   description = "AWS Secret Key"
#   type        = string
#   sensitive   = true
# }

variable "REGION" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}
