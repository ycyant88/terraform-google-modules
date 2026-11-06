variable "composer_env_name" {
  description = "Name of Cloud Composer Environment"
  type        = string
  default     = ""
}

variable "enable_private_endpoint" {
  description = "Configure public access to the cluster endpoint."
  type        = bool
  default     = false
}

variable "network" {
  description = "Network where Cloud Composer is created."
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

variable "subnetwork" {
  description = "Subetwork where Cloud Composer is created."
  type        = string
  default     = ""
}

variable "zone" {
  description = "Zone where the Cloud Composer Environment is created."
  type        = string
  default     = ""
}
