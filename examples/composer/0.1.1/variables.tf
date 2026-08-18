variable "composer_env_name" {
  description = "Name of Cloud Composer Environment"
  type        = string
  default     = ""
}

variable "composer_sa" {
  description = "Service Account to be used for running Cloud Composer Environment."
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
