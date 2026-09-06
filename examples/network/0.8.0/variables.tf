variable "delete_default_internet_gateway_routes" {
  description = "If set, ensure that all routes within the network specified whose names begin with 'default-route' and with a next hop of 'default-internet-gateway' are deleted"
  type        = string
  default     = "false"
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
  type        = list(any)
  default     = []
}

variable "routing_mode" {
  description = "The network routing mode (default 'GLOBAL')"
  type        = string
  default     = "GLOBAL"
}

variable "secondary_ranges" {
  description = "Secondary ranges that will be used in some of the subnets"
  type        = map(any)
  default     = ""
}

variable "shared_vpc_host" {
  description = "Makes this project a Shared VPC host if 'true' (default 'false')"
  type        = string
  default     = "false"
}

variable "subnets" {
  description = "The list of subnets being created"
  type        = list(any)
  default     = ""
}
