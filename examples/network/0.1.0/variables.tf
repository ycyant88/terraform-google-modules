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

variable "secondary_ranges" {
  description = "Secondary ranges that will be used in some of the subnets"
  type = 
  default = ""
}

variable "subnets" {
  description = "The list of subnets being created"
  type = 
  default = ""
}
