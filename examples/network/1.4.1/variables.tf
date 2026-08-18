variable "auto_create_subnetworks" {
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  type        = bool
  default     = false
}

variable "create_network" {
  description = "Specify whether to create a new network or just assume it already exists."
  type        = string
  default     = "true"
}

variable "delete_default_internet_gateway_routes" {
  description = "If set, ensure that all routes within the network specified whose names begin with 'default-route' and with a next hop of 'default-internet-gateway' are deleted"
  type        = string
  default     = "false"
}

variable "description" {
  description = "An optional description of this resource. The resource must be recreated to modify this field."
  type        = string
  default     = ""
}

variable "network_name" {
  description = "The name of the network being created"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
  default     = ""
}

variable "routes" {
  description = "List of routes being created in this VPC"
  type        = list(map(string))
  default     = []
}

variable "routing_mode" {
  description = "The network routing mode (default 'GLOBAL')"
  type        = string
  default     = "GLOBAL"
}

variable "secondary_ranges" {
  description = "Secondary ranges that will be used in some of the subnets"
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  default     = {}
}

variable "shared_vpc_host" {
  description = "Makes this project a Shared VPC host if 'true' (default 'false')"
  type        = string
  default     = "false"
}

variable "subnets" {
  description = "The list of subnets being created"
  type        = list(map(string))
  default     = ""
}
