variable "attestor-name" {
  description = "Name of the attestor"
  type        = string
  default     = ""
}

variable "crypto-algorithm" {
  description = "Algorithm used for the async signing keys"
  type        = string
  default     = "RSA_SIGN_PKCS1_4096_SHA512"
}

variable "keyring-id" {
  description = "Keyring ID to attach attestor keys"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project ID to apply services into"
  type        = string
  default     = ""
}
