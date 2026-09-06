variable "max_project_age_in_hours" {
  description = "The maximum number of hours that a GCP project, selected by target_tag_name and target_tag_value, can exist"
  type        = string
  default     = "6"
}

variable "organization_id" {
  description = "The organization ID whose projects to clean up"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project ID to host the scheduled function in"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region the project is in (App Engine specific)"
  type        = string
  default     = ""
}

variable "target_tag_name" {
  description = "The name of a tag to filter GCP projects on for consideration by the cleanup utility"
  type        = string
  default     = "cft-ephemeral"
}

variable "target_tag_value" {
  description = "The value of a tag to filter GCP projects on for consideration by the cleanup utility"
  type        = string
  default     = "true"
}
