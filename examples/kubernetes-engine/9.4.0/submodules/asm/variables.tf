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

variable "enable_gke_hub_registration" {
  description = "Enables GKE Hub Registration when set to true"
  type        = bool
  default     = true
}

variable "gcloud_sdk_version" {
  description = "The gcloud sdk version to use. Minimum required version is 293.0.0"
  type        = string
  default     = "296.0.1"
}

variable "gke_hub_membership_name" {
  description = "Memebership name that uniquely represents the cluster being registered on the Hub"
  type        = string
  default     = "gke-asm-membership"
}

variable "gke_hub_sa_name" {
  description = "Name for the GKE Hub SA stored as a secret creds-gcp in the gke-connect namespace."
  type        = string
  default     = "gke-hub-sa"
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

variable "skip_gcloud_download" {
  description = "Whether to skip downloading gcloud (assumes gcloud and kubectl already available outside the module)"
  type        = bool
  default     = true
}

variable "use_tf_google_credentials_env_var" {
  description = "Optional GOOGLE_CREDENTIALS environment variable to be activated."
  type        = bool
  default     = false
}
