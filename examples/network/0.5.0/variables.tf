variable "network_name" {
  description = "The name of the network being created"
  type = 
  default = ""
}

variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type = 
  default = ""
}

variable "routes" {
  description = "List of routes being created in this VPC"
  type = 
  default = []
}

variable "routing_mode" {
  description = "The network routing mode (default 'GLOBAL')"
  type = 
  default = "GLOBAL"
}

variable "secondary_ranges" {
  description = "Secondary ranges that will be used in some of the subnets"
  type = 
  default = ""
}

variable "shared_vpc_host" {
  description = "Makes this project a Shared VPC host if 'true' (default 'false')"
  type = 
  default = "false"
}

variable "subnets" {
  description = "The list of subnets being created"
  type = 
  default = ""
}
