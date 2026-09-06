variable "client_enabled" {
  description = "Enable Client VM"
  type        = bool
  default     = true
}

variable "client_service_account" {
  description = "Service account email to assign to the Client VM. If empty, a new Service Account will be created"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type        = string
  default     = ""
}

variable "suffix" {
  description = "The random suffix to append to all Forseti resources"
  type        = string
  default     = ""
}
