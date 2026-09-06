variable "create_topic" {
  description = "Specify true if you want to create a topic"
  type        = bool
  default     = true
}

variable "grant_token_creator" {
  description = "Specify true if you want to add token creator role to the default Pub/Sub SA"
  type        = bool
  default     = true
}

variable "message_storage_policy" {
  description = "A map of storage policies. Default - inherit from organization's Resource Location Restriction policy."
  type        = map(any)
  default     = {}
}

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

variable "subscription_labels" {
  description = "A map of labels to assign to every Pub/Sub subscription"
  type        = map(string)
  default     = {}
}

variable "topic" {
  description = "The Pub/Sub topic name"
  type        = string
  default     = ""
}

variable "topic_kms_key_name" {
  description = "The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic."
  type        = string
  default     = ""
}

variable "topic_labels" {
  description = "A map of labels to assign to the Pub/Sub topic"
  type        = map(string)
  default     = {}
}
