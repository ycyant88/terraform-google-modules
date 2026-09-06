variable "ensure_undelete" {
  description = "Run gcloud command before creating cloud endpoint to force undelete of service endpoint. If endpoint has recently been deleted, it cannot be re-created without first undeleting it."
  type        = string
  default     = true
}

variable "external_ip" {
  description = "External IP the endpoint will point to."
  type        = string
  default     = ""
}

variable "name" {
  description = "Name of the cloud endpoints service. This will create a DNS record in the form of: NAME.endpoints.PROJECT.cloud.goog"
  type        = string
  default     = ""
}

variable "project" {
  description = "Project to create the Cloud Endpoint service in. If not given, the default provider is used."
  type        = string
  default     = ""
}
