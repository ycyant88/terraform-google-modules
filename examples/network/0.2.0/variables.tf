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
