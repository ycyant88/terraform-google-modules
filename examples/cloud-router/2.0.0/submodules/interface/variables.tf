variable "interconnect_attachment" {
  description = "The name or resource link to the VLAN interconnect for this interface"
  type        = string
  default     = ""
}

variable "ip_range" {
  description = "IP address and range of the interface"
  type        = string
  default     = ""
}

variable "name" {
  description = "The name of the interface"
  type        = string
  default     = ""
}

variable "peers" {
  description = "BGP peers for this interface."
  type        = any
  default     = []
}

variable "project" {
  description = "The project ID to deploy to"
  type        = string
  default     = ""
}

variable "region" {
  description = "Region where the interface resides"
  type        = string
  default     = ""
}

variable "router" {
  description = "Name of the router the interface resides"
  type        = string
  default     = ""
}

variable "vpn_tunnel" {
  description = "The name or resource link to the VPN tunnel this interface will be linked to"
  type        = string
  default     = ""
}
