variable "access_config" {
  description = "Access configurations, i.e. IPs via which the VM instance can be accessed via the Internet."
  type = list(object({
    nat_ip       = string
    network_tier = string
  }))
  default = []
}

variable "hostname" {
  description = "Hostname of instances"
  type        = string
  default     = ""
}

variable "instance_template" {
  description = "Instance template self_link used to create compute instances"
  type        = string
  default     = ""
}

variable "named_ports" {
  description = "Named name and named port"
  type = list(object({
    name = string
    port = number
  }))
  default = []
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

variable "project_id" {
  description = "The GCP project ID"
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
