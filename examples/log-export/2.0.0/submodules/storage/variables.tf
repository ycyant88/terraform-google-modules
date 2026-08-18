variable "log_sink_writer_identity" {
  description = "The service account that logging uses to write log entries to the destination. (This is available as an output coming from the root module)."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project in which the storage bucket will be created."
  type        = string
  default     = ""
}

variable "storage_bucket_name" {
  description = "The name of the storage bucket to be created and used for log entries matching the filter."
  type        = string
  default     = ""
}
