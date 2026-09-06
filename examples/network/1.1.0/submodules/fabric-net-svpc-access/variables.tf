variable "host_project_id" {
  description = "Project id of the shared VPC host project."
  type        = string
  default     = ""
}

variable "host_subnet_regions" {
  description = "List of subnet regions, one per subnet."
  type        = list(any)
  default     = []
}

variable "host_subnet_users" {
  description = "Map of comma-delimited IAM-style members, one per subnet."
  type        = map(any)
  default     = {}
}

variable "host_subnets" {
  description = "List of subnet names on which to grant access."
  type        = list(any)
  default     = []
}

variable "service_project_ids" {
  description = "Ids of the service projects that will be granted access to all subnetworks."
  type        = list(any)
  default     = ""
}

variable "service_project_num" {
  description = "Number of service projects that will be granted access to all subnetworks."
  type        = string
  default     = 0
}
