variable "location" {
  description = "The location of the log bucket."
  type        = string
  default     = "global"
}

variable "log_sink_writer_identity" {
  description = "The service account that logging uses to write log entries to the destination. (This is available as an output coming from the root module)."
  type        = string
  default     = ""
}

variable "name" {
  description = "The name of the log bucket to be created and used for log entries matching the filter."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project in which the log bucket will be created."
  type        = string
  default     = ""
}

variable "retention_days" {
  description = "The number of days data should be retained for the log bucket."
  type        = number
  default     = 30
}
