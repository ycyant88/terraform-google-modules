variable "activate_apis" {
  description = "The list of apis to activate within the project"
  type        = list(any)
  default     = ""
}

variable "disable_services_on_destroy" {
  description = "Whether project services will be disabled when the resources are destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_on_destroy"
  type        = string
  default     = "true"
}

variable "enable_apis" {
  description = "Whether to actually enable the APIs. If false, this module is a no-op."
  type        = string
  default     = "true"
}

variable "project_id" {
  description = "The GCP project you want to enable APIs on"
  type        = string
  default     = ""
}
