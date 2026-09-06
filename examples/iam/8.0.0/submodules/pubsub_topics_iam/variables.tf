variable "bindings" {
  description = "Map of role (key) and list of members (value) to add the IAM policies/bindings"
  type        = map(any)
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

variable "pubsub_topics" {
  description = "PubSub Topics list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}
