variable "address_name" {
  description = "The name of the reserved IP range."
  type        = string
  default     = "private-ip-address"
}

variable "network_id" {
  description = "The ID of the VPC network (e.g., google_compute_network.vpc.id)."
  type        = string
  default     = ""
}

variable "prefix_length" {
  description = "The prefix length of the reserved IP range."
  type        = number
  default     = 16
}

variable "project_id" {
  description = "The project ID of the VPC network."
  type        = string
  default     = ""
}
