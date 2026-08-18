variable "delete_default_internet_gateway_routes" {
  description = "If set, ensure that all routes within the network specified whose names begin with 'default-route' and with a next hop of 'default-internet-gateway' are deleted"
  type        = string
  default     = "false"
}

variable "module_depends_on" {
  description = "List of modules or resources this module depends on."
  type        = list(any)
  default     = []
}

variable "network_name" {
  description = "The name of the network where routes will be created"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project where the routes will be created"
  type        = string
  default     = ""
}

variable "routes" {
  description = "List of routes being created in this VPC"
  type        = list(map(string))
  default     = []
}

variable "routes_count" {
  description = "Amount of routes being created in this VPC"
  type        = number
  default     = 0
}
