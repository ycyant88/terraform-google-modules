variable "bindings" {
  description = "Map of role (key) and list of members (value) to add the IAM policies/bindings"
  type        = map(any)
  default     = ""
}

variable "cloud_run_services" {
  description = "Cloud Run services list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "location" {
  description = "The location of the cloud run instance"
  type        = string
  default     = ""
}

variable "mode" {
  description = "Mode for adding the IAM policies/bindings, additive and authoritative"
  type        = string
  default     = "additive"
}

variable "project" {
  description = "Project to add the IAM policies/bindings"
  type        = string
  default     = ""
}
