variable "project_id" {
  description = "The project ID to manage the Pub/Sub resources"
  type        = string
  default     = ""
}

variable "pull_subscriptions" {
  description = "The list of the pull subscriptions"
  type        = list(map(string))
  default     = []
}

variable "push_subscriptions" {
  description = "The list of the push subscriptions"
  type        = list(map(string))
  default     = []
}

variable "topic" {
  description = "The Pub/Sub topic name"
  type        = string
  default     = ""
}
