variable "composer_env_name" {
  description = "Name of the Cloud Composer Environment."
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the pool"
  type        = string
  default     = "Managed by Terraform"
}

variable "pool_name" {
  description = "The name of the pool"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project ID where Cloud Composer Environment is created."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region where the Cloud Composer Environment is created."
  type        = string
  default     = ""
}

variable "slot_count" {
  description = "The number of slots in this pool"
  type        = number
  default     = ""
}
