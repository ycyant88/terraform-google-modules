variable "address_name" {
  description = "Private Service Connect Endpoint address name."
  type        = string
  default     = "psc-for-published-services-endpoint-address"
}

variable "forwarding_rule_name" {
  description = "Private Service Connect Forwarding Rule resource name. Follow regular GCE naming pattern: https://docs.cloud.google.com/compute/docs/naming-resources#resource-name-format."
  type        = string
  default     = "psc-for-published-services-endpoint"
}

variable "ip_address" {
  description = "Private Service Connect Endpoint IP address. GCP will pick an IP if left unset."
  type        = string
  default     = null
}

variable "ip_version" {
  description = "IPv4or IPv6. Only set this field when private_service_connect_ip is unset. If both ip_address and ip_version are unset, GCP will pick an IPv4 address."
  type        = string
  default     = null
}

variable "network" {
  description = "Name, id or self link of the network to create resources in. For Shared VPC case, use network self link."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project ID in which to provision the resources."
  type        = string
  default     = ""
}

variable "psc_global_access" {
  description = "Whether to allow Private Service Connect global access."
  type        = bool
  default     = false
}

variable "region" {
  description = "Region in which to provision the resources."
  type        = string
  default     = ""
}

variable "service_attachment" {
  description = "The target service attachment resource URL for this Private Service Connect Endpoint."
  type        = string
  default     = ""
}

variable "service_directory_namespace" {
  description = "Service Directory namespace to register the forwarding rule under."
  type        = string
  default     = null
}

variable "subnetwork" {
  description = "Name, id or self link of the subnetwork to create resources in. For Shared VPC case, use subnetwork self link."
  type        = string
  default     = ""
}
