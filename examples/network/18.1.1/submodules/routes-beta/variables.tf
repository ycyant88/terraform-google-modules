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
  description = "List of routes being created in this VPC."
  type = list(object({
    name                   = string
    description            = optional(string)
    tags                   = optional(list(string), [])
    destination_range      = string
    next_hop_gateway       = optional(string)
    next_hop_internet      = optional(bool, false)
    next_hop_ip            = optional(string)
    next_hop_instance      = optional(string)
    next_hop_instance_zone = optional(string)
    next_hop_vpn_tunnel    = optional(string)
    next_hop_ilb           = optional(string)
    priority               = optional(number, 1000)
  }))
  default = []
}

variable "routes_count" {
  description = "Amount of routes being created in this VPC"
  type        = number
  default     = 0
}
