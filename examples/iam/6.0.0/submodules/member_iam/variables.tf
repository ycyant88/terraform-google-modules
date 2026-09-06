variable "project_id" {
  description = "Project id"
  type        = string
  default     = ""
}

variable "project_roles" {
  description = "List of IAM roles"
  type        = list(string)
  default     = ""
}

variable "service_account_address" {
  description = "Service account address"
  type        = string
  default     = ""
}
