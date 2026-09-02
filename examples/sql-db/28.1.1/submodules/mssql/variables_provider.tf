variable "project" {
  type        = string
  description = "GCP project ID where resources will be created."
  default     = "my-gcp-project"
}

variable "region" {
  type        = string
  description = "GCP region for resource deployment."
  default     = "us-central1"
}
