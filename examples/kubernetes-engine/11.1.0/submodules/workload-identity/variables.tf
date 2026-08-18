variable "automount_service_account_token" {
  description = "Enable automatic mounting of the service account token"
  type        = bool
  default     = false
}

variable "cluster_name" {
  description = "Cluster name. Required if using existing KSA."
  type        = string
  default     = ""
}

variable "k8s_sa_name" {
  description = "Name for the existing Kubernetes service account"
  type        = string
  default     = ""
}

variable "location" {
  description = "Cluster location (region if regional cluster, zone if zonal cluster). Required if using existing KSA."
  type        = string
  default     = ""
}

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
