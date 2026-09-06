variable "module_depends_on" {
  description = "List of modules or resources this module depends on."
  type        = list(any)
  default     = []
}

variable "network_name" {
  description = "The name of the network where subnets will be created"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project where subnets will be created"
  type        = string
  default     = ""
}

variable "secondary_ranges" {
  description = "Secondary ranges that will be used in some of the subnets"
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  default     = {}
}

variable "subnets" {
  description = "The list of subnets being created"
  type        = list(map(string))
  default     = ""
}
