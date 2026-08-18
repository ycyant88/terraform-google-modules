variable "bindings" {
  description = "Map of role (key) and list of members (value) to add the IAM policies/bindings"
  type        = map(list(string))
  default     = ""
}

variable "bindings_num" {
  description = "Number of bindings, in case using dependencies of other resources' outputs"
  type        = number
  default     = 0
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

variable "service_accounts" {
  description = "Service Accounts list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "service_accounts_num" {
  description = "Number of Service Accounts, in case using dependencies of other resources' outputs"
  type        = number
  default     = 0
}
