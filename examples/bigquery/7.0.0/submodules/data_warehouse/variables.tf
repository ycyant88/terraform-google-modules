variable "deletion_protection" {
  description = "Whether or not to protect GCS resources from deletion when solution is modified or changed."
  type        = string
  default     = true
}

variable "enable_apis" {
  description = "Whether or not to enable underlying apis in this solution."
  type        = string
  default     = true
}

variable "force_destroy" {
  description = "Whether or not to protect BigQuery resources from deletion when solution is modified or changed."
  type        = string
  default     = false
}

variable "labels" {
  description = "A map of labels to apply to contained resources."
  type        = map(string)
  default     = { "data-warehouse" : true }
}

variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
  default     = ""
}

variable "region" {
  description = "Google Cloud Region"
  type        = string
  default     = ""
}
