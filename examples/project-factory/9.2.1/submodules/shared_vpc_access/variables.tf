variable "active_apis" {
  description = "The list of active apis on the service project. If api is not active this module will not try to activate it"
  type        = list(string)
  default     = []
}

variable "grant_services_security_admin_role" {
  description = "Whether or not to grant Kubernetes Engine Service Agent the Security Admin role on the host project so it can manage firewall rules"
  type        = bool
  default     = false
}

variable "host_project_id" {
  description = "The ID of the host project which hosts the shared VPC"
  type        = string
  default     = ""
}

variable "service_project_id" {
  description = "The ID of the service project"
  type        = string
  default     = ""
}

variable "shared_vpc_subnets" {
  description = "List of subnets fully qualified subnet IDs (ie. projects/$project_id/regions/$region/subnetworks/$subnet_id)"
  type        = list(string)
  default     = []
}
