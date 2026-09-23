variable "billing_account_ids" {
  description = "Billing Accounts IDs list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "bindings" {
  description = "Map of role (key) and list of members (value) to add the IAM policies/bindings"
  type        = map(list(string))
  default     = ""
}

variable "mode" {
  description = "Mode for adding the IAM policies/bindings, additive and authoritative"
  type        = string
  default     = "additive"
}
