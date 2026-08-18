variable "interconnect_attachment" {
  description = "The name or resource link to the VLAN interconnect for this interface"
  type        = string
  default     = null
}

variable "ip_range" {
  description = "IP address and range of the interface"
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the interface"
  type        = string
  default     = ""
}

variable "peers" {
  description = "BGP peers for this interface."
  type = list(object({
    name                           = string
    peer_ip_address                = string
    peer_asn                       = string
    advertised_route_priority      = optional(number)
    zero_advertised_route_priority = optional(bool)
    bfd = object({
      session_initialization_mode = string
      min_transmit_interval       = optional(number)
      min_receive_interval        = optional(number)
      multiplier                  = optional(number)
    })
    md5_authentication_key = optional(object({
      name = string
      key  = string
    }))
    export_policies = optional(list(string))
    import_policies = optional(list(string))
  }))
  default = []
}

variable "project_id" {
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
  default     = null
}
