# variables.tf
variable "db_username" {
  description = "Jordann6"
  type        = string
}

variable "db_password" {
  description = "SampleOne"
  type        = string
  sensitive   = true
}
