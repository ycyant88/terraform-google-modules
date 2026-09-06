variable "description" {
  description = "Default description of the created service accounts (defaults to no description)"
  type        = string
  default     = ""
}

variable "display_name" {
  description = "Display name of the created service accounts (defaults to 'Terraform-managed service account')"
  type        = string
  default     = "Terraform-managed service account"
}

variable "name" {
  description = "Name of service account"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project id where service account will be created"
  type        = string
  default     = ""
}

variable "project_roles" {
  description = "Roles to grant the SA in specified project"
  type        = list(string)
  default     = []
}
