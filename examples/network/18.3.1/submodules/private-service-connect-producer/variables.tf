variable "connection_preference" {
  description = "ACCEPT_AUTOMATIC or ACCEPT_MANUAL"
  type        = string
  default     = ""
}

variable "consumer_accept_lists" {
  description = "(Optional) An array of projects/networks that are allowed to connect to this service attachment: The list needs to be either project-based or network-based."
  type = list(object({
    project_id_or_num = optional(string)
    network_url       = optional(string)
    connection_limit  = number
  }))
  default = []
}

variable "consumer_reject_lists" {
  description = "(Optional) An array of projects/networks that are not allowed to connect to this service attachment."
  type        = list(string)
  default     = null
}

variable "domain_names" {
  description = "(Optional) The domain names to be used during the integration between the PSC connected endpoints and the Cloud DNS."
  type        = list(string)
  default     = null
}

variable "enable_proxy_protocol" {
  description = "(Optional) Enables the proxy protocol which is for supplying client TCP/IP address data in TCP connections that traverse proxies on their way to destination servers."
  type        = bool
  default     = false
}

variable "name" {
  description = "Name for the service attachment."
  type        = string
  default     = ""
}

variable "nat_subnets" {
  description = "  NAT Subnets.\n  - subnet_name: (Optional) Name of the subnet. Defaults to $var.name-nat-subnet-$index if unset.\n  - ipv4_range: (Optional) IPv4 range is required for IPV4_ONLY and IPV4_IPV6 stack type. Leave ipv4_range unset for IPV6_ONLY subnet.\n  - stack_type: (Optional) IPV4_ONLY, IPV4_IPV6 or IPV6_ONLY. IPv6 range is assigned by GCP.\n"
  type = list(object({
    subnet_name = optional(string)
    ipv4_range  = optional(string)
    stack_type  = optional(string)
  }))
  default = ""
}

variable "network" {
  description = "Name, id or self link of the network to create resources in."
  type        = string
  default     = ""
}

variable "network_project_id" {
  description = "(Optional) Name of the project for the Shared VPC host network, in which the NAT subnets will be created. Required for Shared VPC case."
  type        = string
  default     = null
}

variable "project_id" {
  description = "The project to deploy to, if not set the default provider project is used."
  type        = string
  default     = ""
}

variable "propagated_connection_limit" {
  description = "(Optional) The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center."
  type        = number
  default     = null
}

variable "reconcile_connections" {
  description = "(Optional) Determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints."
  type        = bool
  default     = false
}

variable "region" {
  description = "Region for cloud resources."
  type        = string
  default     = ""
}

variable "target_service" {
  description = "Target service URL ex. ILB, SWP. Supported types: https://cloud.google.com/vpc/docs/configure-private-service-connect-producer#lb-types "
  type        = string
  default     = ""
}
