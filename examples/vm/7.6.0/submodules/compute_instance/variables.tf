variable "access_config" {
  description = "Access configurations, i.e. IPs via which the VM instance can be accessed via the Internet."
  type = list(object({
    nat_ip       = string
    network_tier = string
  }))
  default = []
}

variable "add_hostname_suffix" {
  description = "Adds a suffix to the hostname"
  type        = bool
  default     = true
}

variable "deletion_protection" {
  description = "Enable deletion protection on this instance. Note: you must disable deletion protection before removing the resource, or the instance cannot be deleted and the Terraform run will not complete successfully."
  type        = bool
  default     = false
}

variable "hostname" {
  description = "Hostname of instances"
  type        = string
  default     = ""
}

variable "hostname_suffix_separator" {
  description = "Separator character to compose hostname when add_hostname_suffix is set to true."
  type        = string
  default     = "-"
}

variable "instance_template" {
  description = "Instance template self_link used to create compute instances"
  type        = string
  default     = ""
}

variable "network" {
  description = "Network to deploy to. Only one of network or subnetwork should be specified."
  type        = string
  default     = ""
}

variable "num_instances" {
  description = "Number of instances to create. This value is ignored if static_ips is provided."
  type        = string
  default     = "1"
}

variable "region" {
  description = "Region where the instances should be created."
  type        = string
  default     = ""
}

variable "static_ips" {
  description = "List of static IPs for VM instances"
  type        = list(string)
  default     = []
}

variable "subnetwork" {
  description = "Subnet to deploy to. Only one of network or subnetwork should be specified."
  type        = string
  default     = ""
}

variable "subnetwork_project" {
  description = "The project that subnetwork belongs to"
  type        = string
  default     = ""
}

variable "zone" {
  description = "Zone where the instances should be created. If not specified, instances will be spread across available zones in the region."
  type        = string
  default     = ""
}
