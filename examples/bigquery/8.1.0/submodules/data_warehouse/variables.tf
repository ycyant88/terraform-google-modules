variable "create_ignore_service_accounts" {
  description = "Whether or not to ignore creation of a service account if an account of the same name already exists"
  type        = string
  default     = true
}

variable "dataform_region" {
  description = "Region that is used to deploy Dataform resources. This does not limit where resources can be run or what region data must be located in."
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "Whether or not to protect GCS resources from deletion when solution is modified or changed."
  type        = string
  default     = false
}

variable "enable_apis" {
  description = "Whether or not to enable underlying apis in this solution."
  type        = string
  default     = true
}

variable "force_destroy" {
  description = "Whether or not to protect BigQuery resources from deletion when solution is modified or changed."
  type        = string
  default     = true
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

variable "text_generation_model_name" {
  description = "Name of the BigQuery ML GenAI remote model that connects to the LLM used for text generation"
  type        = string
  default     = "text_generate_model"
}
