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
