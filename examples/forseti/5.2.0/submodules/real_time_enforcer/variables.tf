variable "client_region" {
  description = "Forseti real time enforcer region"
  type        = string
  default     = "us-central1"
}

variable "enforcer_boot_image" {
  description = "Forseti real time enforcer boot image"
  type        = string
  default     = "cos-cloud/cos-stable-72-11316-136-0"
}

variable "enforcer_instance_access_config" {
  description = "Enforcer instance 'access_config' block"
  type        = map(any)
  default     = {}
}

variable "enforcer_instance_metadata" {
  description = "Metadata key/value pairs to make available from within the real time enforcer instance."
  type        = map(string)
  default     = {}
}

variable "enforcer_instance_private" {
  description = "Enable enforcer instance private IP"
  type        = string
  default     = "false"
}

variable "enforcer_region" {
  description = "GCE Forseti Client role region size"
  type        = string
  default     = "us-central1"
}

variable "enforcer_ssh_allow_ranges" {
  description = "List of CIDRs that will be allowed ssh access to forseti real time enforcer"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "enforcer_type" {
  description = "Forseti real time enforcer instance type"
  type        = string
  default     = "n1-standard-2"
}

variable "enforcer_viewer_role" {
  description = "An IAM role granting the enforcer service account the rights to check for policy violations."
  type        = string
  default     = ""
}

variable "enforcer_writer_role" {
  description = "An IAM role granting the enforcer service account the rights to enforce policy."
  type        = string
  default     = ""
}

variable "manage_firewall_rules" {
  description = "Create enforcer firewall rules"
  type        = bool
  default     = true
}

variable "network" {
  description = "The VPC where the Forseti real time enforcer will be created"
  type        = string
  default     = "default"
}

variable "network_project" {
  description = "The project containing the VPC and subnetwork where the Forseti real time enforcer will be created"
  type        = string
  default     = ""
}

variable "org_id" {
  description = "GCP Organization ID that Forseti will have purview over"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type        = string
  default     = ""
}

variable "storage_bucket_location" {
  description = "GCS storage bucket location"
  type        = string
  default     = "us-central1"
}

variable "subnetwork" {
  description = "The VPC subnetwork where the Forseti real time enforcer will be created"
  type        = string
  default     = "default"
}

variable "suffix" {
  description = "The random suffix to append to all Forseti resources"
  type        = string
  default     = ""
}

variable "topic" {
  description = "The pubsub topic receiving exported logs."
  type        = string
  default     = ""
}
