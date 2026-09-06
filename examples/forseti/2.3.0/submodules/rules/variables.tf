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

variable "org_id" {
  description = "The organization ID"
  type        = string
  default     = ""
}
