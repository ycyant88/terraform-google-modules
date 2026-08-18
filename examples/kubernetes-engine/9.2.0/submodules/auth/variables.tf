variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
  default     = ""
}

variable "location" {
  description = "The location (region or zone) of the GKE cluster."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The GCP project of the GKE cluster."
  type        = string
  default     = ""
}
