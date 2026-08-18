variable "client_boot_image" {
  description = "GCE Forseti Client role instance size"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "client_instance_metadata" {
  description = "Metadata key/value pairs to make available from within the client instance."
  type        = map(any)
  default     = {}
}

variable "client_region" {
  description = "GCE Forseti Client role region size"
  type        = string
  default     = "us-central1"
}

variable "client_type" {
  description = "GCE Forseti Client role instance size"
  type        = string
  default     = "n1-standard-2"
}

variable "forseti_home" {
  description = "Forseti installation directory"
  type        = string
  default     = "$USER_HOME/forseti-security"
}

variable "forseti_repo_url" {
  description = "Git repo for the Forseti installation"
  type        = string
  default     = "https://github.com/GoogleCloudPlatform/forseti-security"
}

variable "forseti_version" {
  description = "The version of Forseti to install"
  type        = string
  default     = "v2.10.0"
}

variable "network_project" {
  description = "The project containing the VPC and subnetwork where the Forseti client and server will be created"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type        = string
  default     = ""
}

variable "server_address" {
  description = "The Forseti server address"
  type        = string
  default     = ""
}

variable "services" {
  description = "An artificial dependency to bypass #10462"
  type        = list(any)
  default     = [""]
}

variable "storage_bucket_location" {
  description = "GCS storage bucket location"
  type        = string
  default     = "us-central1"
}

variable "subnetwork" {
  description = "The VPC subnetwork where the Forseti client and server will be created"
  type        = string
  default     = "default"
}

variable "suffix" {
  description = "The random suffix to append to all Forseti resources"
  type        = string
  default     = ""
}
