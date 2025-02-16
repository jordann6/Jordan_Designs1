# variables.tf
variable "db_username" {
  description = "****"
  type        = string
}

variable "db_password" {
  description = "*****"
  type        = string
  sensitive   = true
}
