variable "pubsub_project_id" {
  description = "The project ID containing the Enforcer pubsub topic."
  type        = string
  default     = ""
}

variable "sink_project_id" {
  description = "The project ID where logs will be exported from."
  type        = string
  default     = ""
}
