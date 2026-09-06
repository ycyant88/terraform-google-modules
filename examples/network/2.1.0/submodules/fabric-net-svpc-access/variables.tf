variable "host_project_id" {
  description = "Project id of the shared VPC host project."
  type        = string
  default     = ""
}

variable "host_service_agent_role" {
  description = "Assign host service agent role to users in host_service_agent_users variable."
  type        = string
  default     = false
}

variable "host_service_agent_users" {
  description = "List of IAM-style users that will be granted the host service agent role on the host project."
  type        = list(any)
  default     = []
}

variable "host_subnet_regions" {
  description = "List of subnet regions, one per subnet."
  type        = list(any)
  default     = []
}

variable "host_subnet_users" {
  description = "Map of comma-delimited IAM-style members to which network user roles for subnets will be assigned."
  type        = map(any)
  default     = {}
}

variable "host_subnets" {
  description = "List of subnet names on which to grant network user role."
  type        = list(any)
  default     = []
}

variable "service_project_ids" {
  description = "Ids of the service projects that will be attached to the Shared VPC."
  type        = list(any)
  default     = ""
}

variable "service_project_num" {
  description = "Number of service projects that will be attached to the Shared VPC."
  type        = string
  default     = 0
}
