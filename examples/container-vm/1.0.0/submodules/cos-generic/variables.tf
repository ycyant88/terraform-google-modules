variable "allow_stopping_for_update" {
  description = "Allow stopping the instance for specific Terraform changes."
  type        = string
  default     = false
}

variable "boot_disk_size" {
  description = "Size of the boot disk."
  type        = string
  default     = 10
}

variable "cloud_init" {
  description = "Path to a file that will be used for the cloud-config template."
  type        = string
  default     = ""
}

variable "cloud_init_custom_var" {
  description = "String passed in to the cloud-config template as custome variable."
  type        = string
  default     = ""
}

variable "instance_count" {
  description = "Number of instances to create."
  type        = string
  default     = 1
}

variable "instance_type" {
  description = "Instance machine type."
  type        = string
  default     = "g1-small"
}

variable "labels" {
  description = "Labels to be attached to the resources"
  type        = map(any)
  default     = { "service" : "coredns" }
}

variable "prefix" {
  description = "Prefix to prepend to resource names."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project id where the instances will be created."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region for external addresses."
  type        = string
  default     = ""
}

variable "reserve_ip" {
  description = "Reserve an IP address for the instance instead of using an ephemeral address."
  type        = string
  default     = false
}

variable "scopes" {
  description = "Instance scopes."
  type        = list(any)
  default     = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/pubsub", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
}

variable "service_account" {
  description = "Instance service account."
  type        = string
  default     = ""
}

variable "stackdriver_logging" {
  description = "Enable the Stackdriver logging agent."
  type        = string
  default     = true
}

variable "stackdriver_monitoring" {
  description = "Enable the Stackdriver monitoring agent."
  type        = string
  default     = true
}

variable "subnetwork" {
  description = "Self link of the VPC subnet to use for the internal interface."
  type        = string
  default     = ""
}

variable "vm_tags" {
  description = "Additional network tags for the instances."
  type        = list(any)
  default     = []
}

variable "zone" {
  description = "Instance zone."
  type        = string
  default     = ""
}
