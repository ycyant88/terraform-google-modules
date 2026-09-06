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

variable "static_ips" {
  description = "List of static IPs for VM instances"
  type        = list(any)
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
