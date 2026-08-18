variable "bucket_cai_lifecycle_age" {
  description = "GCS CAI lifecycle age value"
  type        = string
  default     = "14"
}

variable "bucket_cai_location" {
  description = "GCS CAI storage bucket location"
  type        = string
  default     = "us-central1"
}

variable "enable_cai_bucket" {
  description = "Create a GCS bucket for CAI exports"
  type        = bool
  default     = true
}

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type        = string
  default     = ""
}

variable "services" {
  description = "An artificial dependency to bypass #10462"
  type        = list(string)
  default     = []
}

variable "storage_bucket_location" {
  description = "GCS storage bucket location"
  type        = string
  default     = "us-central1"
}

variable "suffix" {
  description = "The random suffix to append to all Forseti resources"
  type        = string
  default     = ""
}
