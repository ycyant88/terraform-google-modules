variable "bucket" {
  description = "The GCS bucket where rules will be uploaded"
  type        = string
  default     = ""
}

variable "domain" {
  description = "The domain associated with the GCP Organization ID"
  type        = string
  default     = ""
}

variable "manage_rules_enabled" {
  description = "A toggle to enable or disable the management of rules"
  type        = bool
  default     = true
}

variable "org_id" {
  description = "The organization ID"
  type        = string
  default     = ""
}
