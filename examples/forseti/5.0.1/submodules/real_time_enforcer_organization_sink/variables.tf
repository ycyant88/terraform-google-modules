variable "org_id" {
  description = "The organization ID where logs will be exported from."
  type        = string
  default     = ""
}

variable "pubsub_project_id" {
  description = "The project ID containing the Enforcer pubsub topic."
  type        = string
  default     = ""
}
