variable "log_sink_writer_identity" {
  description = "The service account that logging uses to write log entries to the destination. (This is available as an output coming from the root module)."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project to which logs will be routed."
  type        = string
  default     = ""
}
