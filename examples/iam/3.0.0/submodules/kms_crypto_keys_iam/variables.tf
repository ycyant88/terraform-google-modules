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

variable "kms_crypto_keys" {
  description = "KMS crypto keys list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}

variable "kms_crypto_keys_num" {
  description = "Number of KMS crypto keys, in case using dependencies of other resources' outputs"
  type        = number
  default     = 0
}

variable "mode" {
  description = "Mode for adding the IAM policies/bindings, additive and authoritative"
  type        = string
  default     = "additive"
}
