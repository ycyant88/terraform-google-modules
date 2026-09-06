variable "asm_dir" {
  description = "Name of directory to keep ASM resource config files."
  type        = string
  default     = "asm-dir"
}

variable "asm_version" {
  description = "ASM version to deploy. Available versions are documented in https://github.com/GoogleCloudPlatform/anthos-service-mesh-packages"
  type        = string
  default     = "1.8"
}

variable "cluster_endpoint" {
  description = "The GKE cluster endpoint."
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = "The unique name to identify the cluster in ASM."
  type        = string
  default     = ""
}

variable "gcloud_sdk_version" {
  description = "The gcloud sdk version to use. Minimum required version is 293.0.0"
  type        = string
  default     = "296.0.1"
}

variable "location" {
  description = "The location (zone or region) this cluster has been created in."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project in which the resource belongs."
  type        = string
  default     = ""
}

variable "service_account_key_file" {
  description = "Path to service account key file to auth as for running gcloud container clusters get-credentials."
  type        = string
  default     = ""
}
