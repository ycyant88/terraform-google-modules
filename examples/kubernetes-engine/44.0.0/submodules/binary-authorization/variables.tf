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

variable "disable_dependent_services" {
  description = "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_dependent_services"
  type        = bool
  default     = false
}

variable "disable_services_on_destroy" {
  description = "Whether project services will be disabled when the resources are destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_on_destroy"
  type        = bool
  default     = false
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
