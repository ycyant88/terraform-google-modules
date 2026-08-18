variable "name" {
  description = "Name for both service accounts"
  type        = string
  default     = ""
}

variable "namespace" {
  description = "Namespace for k8s service account"
  type        = string
  default     = "default"
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = ""
}

variable "use_existing_k8s_sa" {
  description = "Use an existing kubernetes service account instead of creating one"
  type        = bool
  default     = false
}
