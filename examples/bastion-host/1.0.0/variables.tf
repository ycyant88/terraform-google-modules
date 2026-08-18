variable "host_project" {
  description = "The network host project ID"
  type        = string
  default     = ""
}

variable "image_family" {
  description = "Source image family for the Bastion."
  type        = string
  default     = "centos-7"
}

variable "image_project" {
  description = "Project where the source image for the Bastion comes from"
  type        = string
  default     = "gce-uefi-images"
}

variable "labels" {
  description = "Key-value map of labels to assign to the bastion host"
  type        = map(any)
  default     = {}
}

variable "machine_type" {
  description = "Instance type for the Bastion host"
  type        = string
  default     = "n1-standard-1"
}

variable "members" {
  description = "List of IAM resources to allow access to the bastion host"
  type        = list(any)
  default     = []
}

variable "name" {
  description = "Name of the Bastion instance"
  type        = string
  default     = "bastion-vm"
}

variable "network" {
  description = "Self link for the network on which the Bastion should live"
  type        = string
  default     = ""
}

variable "project" {
  description = "The project ID to deploy to"
  type        = string
  default     = ""
}

variable "random_role_id" {
  description = "Enables role random id generation."
  type        = bool
  default     = true
}

variable "region" {
  description = "The primary region where the bastion host will live"
  type        = string
  default     = "us-central1"
}

variable "scopes" {
  description = "List of scopes to attach to the bastion host"
  type        = list(any)
  default     = ["cloud-platform"]
}

variable "service_account_roles" {
  description = "List of IAM roles to assign to the service account."
  type        = list(any)
  default     = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/compute.osLogin"]
}

variable "service_account_roles_supplemental" {
  description = "An additional list of roles to assign to the bastion if desired"
  type        = list(any)
  default     = []
}

variable "shielded_vm" {
  description = ""
  type        = string
  default     = true
}

variable "startup_script" {
  description = "Render a startup script with a template."
  type        = string
  default     = ""
}

variable "subnet" {
  description = "Self link for the subnet on which the Bastion should live. Can be private when using IAP"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Network tags, provided as a list"
  type        = list(string)
  default     = []
}

variable "zone" {
  description = "The primary zone where the bastion host will live"
  type        = string
  default     = "us-central1-a"
}
