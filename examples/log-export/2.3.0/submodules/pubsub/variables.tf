variable "create_subscriber" {
  description = "Whether to create a subscription to the topic that was created and used for log entries matching the filter. If 'true', a subscription is created along with a service account that is granted roles/pubsub.subscriber and roles/pubsub.viewer to the topic."
  type        = string
  default     = "false"
}

variable "log_sink_writer_identity" {
  description = "The service account that logging uses to write log entries to the destination. (This is available as an output coming from the root module)."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project in which the pubsub topic will be created."
  type        = string
  default     = ""
}

variable "topic_labels" {
  description = "A set of key/value label pairs to assign to the pubsub topic."
  type        = map(any)
  default     = {}
}

variable "topic_name" {
  description = "The name of the pubsub topic to be created and used for log entries matching the filter."
  type        = string
  default     = ""
}
