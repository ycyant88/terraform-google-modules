variable "create_vpn_gateway" {
  description = "create a VPN gateway"
  type        = bool
  default     = true
}

variable "external_vpn_gateway_description" {
  description = "An optional description of external VPN Gateway"
  type        = string
  default     = "Terraform managed external VPN gateway"
}

variable "interconnect_attachment" {
  description = "URL of the interconnect attachment resource. When the value of this field is present, the VPN Gateway will be used for IPsec-encrypted Cloud Interconnect."
  type        = list(string)
  default     = []
}

variable "ipsec_secret_length" {
  description = "The lnegth the of shared secret for VPN tunnels"
  type        = number
  default     = 8
}

variable "keepalive_interval" {
  description = "The interval in seconds between BGP keepalive messages that are sent to the peer."
  type        = number
  default     = 20
}

variable "labels" {
  description = "Labels for vpn components"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "VPN gateway name, and prefix used for dependent resources."
  type        = string
  default     = ""
}

variable "network" {
  description = "VPC used for the gateway and routes."
  type        = string
  default     = ""
}

variable "peer_external_gateway" {
  description = "Configuration of an external VPN gateway to which this VPN is connected."
  type = object({
    name            = optional(string)
    redundancy_type = optional(string)
    interfaces = list(object({
      id         = number
      ip_address = string
    }))
  })
  default = null
}

variable "peer_gcp_gateway" {
  description = "Self Link URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected."
  type        = string
  default     = null
}

variable "project_id" {
  description = "Project where resources will be created."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region used for resources."
  type        = string
  default     = ""
}

variable "route_priority" {
  description = "Route priority, defaults to 1000."
  type        = number
  default     = 1000
}

variable "router_advertise_config" {
  description = "Router custom advertisement configuration, ip_ranges is a map of address ranges and descriptions."
  type = object({
    groups    = list(string)
    ip_ranges = map(string)
    mode      = optional(string)
  })
  default = null
}

variable "router_asn" {
  description = "Router ASN used for auto-created router."
  type        = number
  default     = 64514
}

variable "router_name" {
  description = "Name of router, leave blank to create one."
  type        = string
  default     = ""
}

variable "stack_type" {
  description = "The IP stack type will apply to all the tunnels associated with this VPN gateway."
  type        = string
  default     = "IPV4_ONLY"
}

variable "tunnels" {
  description = "VPN tunnel configurations, bgp_peer_options is usually null."
  type = map(object({
    bgp_peer = object({
      address = string
      asn     = number
    })
    bgp_session_name = optional(string)
    bgp_peer_options = optional(object({
      ip_address          = optional(string)
      advertise_groups    = optional(list(string))
      advertise_ip_ranges = optional(map(string))
      advertise_mode      = optional(string)
      route_priority      = optional(number)
      import_policies     = optional(list(string))
      export_policies     = optional(list(string))
    }))
    bgp_session_range               = optional(string)
    ike_version                     = optional(number)
    vpn_gateway_interface           = optional(number)
    peer_external_gateway_self_link = optional(string, null)
    peer_external_gateway_interface = optional(number)
    shared_secret                   = optional(string, "")
  }))
  default = {}
}

variable "vpn_gateway_self_link" {
  description = "self_link of existing VPN gateway to be used for the vpn tunnel. create_vpn_gateway should be set to false"
  type        = string
  default     = null
}
