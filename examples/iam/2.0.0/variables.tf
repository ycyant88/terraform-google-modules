variable "bindings" {
  description = "Map of role (key) and list of members (value) to add the IAM policies/bindings"
  type        = map(any)
  default     = ""
}

variable "folders" {
  description = "Folders list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "kms_crypto_keys" {
  description = "Kms Crypto Key list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "kms_key_rings" {
  description = "Kms Key Rings list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "mode" {
  description = "Mode for adding the IAM policies/bindings, additive and authoritative"
  type        = string
  default     = "additive"
}

variable "organizations" {
  description = "Organizations list to add the IAM policies/bindings"
  type        = list(any)
  default     = []
}

variable "project" {
  description = "Project to add the IAM policies/bindings"
  type        = string
  default     = ""
}

variable "projects" {
  description = "Projects list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "pubsub_subscriptions" {
  description = "Pubsub subscriptions list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "pubsub_topics" {
  description = "Pubsub topics list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "service_accounts" {
  description = "Service Accounts list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "storage_buckets" {
  description = "Buckets list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "subnets" {
  description = "Subnets list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}
