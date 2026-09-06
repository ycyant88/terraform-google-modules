variable "admin_enabled" {
  description = "Whether the VLAN attachment is enabled or disabled"
  type        = bool
  default     = true
}

variable "bandwidth" {
  description = "Provisioned bandwidth capacity for the interconnect attachment"
  type        = string
  default     = "BPS_10G"
}

variable "candidate_subnets" {
  description = "Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc)."
  type        = list(string)
  default     = null
}

variable "create_interface" {
  description = "Whether to create router interface (and peer) for this attachment. Set this to false for PARTNER type."
  type        = bool
  default     = true
}

variable "description" {
  description = "An optional description of this resource"
  type        = string
  default     = null
}

variable "edge_availability_domain" {
  description = "Desired availability domain for the attachment. Only available for type PARTNER, at creation time."
  type        = string
  default     = null
}

variable "encryption" {
  description = "Indicates the user-supplied encryption option of this interconnect attachment."
  type        = string
  default     = "NONE"
}

variable "interconnect" {
  description = "URL of the underlying Interconnect object that this attachment's traffic will traverse through."
  type        = string
  default     = ""
}

variable "interface" {
  description = "Interface to deploy for this attachment."
  type = object({
    name = string
  })
  default = null
}

variable "ipsec_internal_addresses" {
  description = "URL of addresses that have been reserved for the interconnect attachment, Used only for interconnect attachment that has the encryption option as IPSEC."
  type        = list(string)
  default     = []
}

variable "mtu" {
  description = "Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Currently, only 1440 and 1500 are allowed. If not specified, the value will default to 1440."
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the interconnect attachment"
  type        = string
  default     = ""
}

variable "peer" {
  description = "BGP Peer for this attachment."
  type = object({
    name                           = string
    peer_asn                       = string
    advertised_route_priority      = optional(number)
    zero_advertised_route_priority = optional(bool)
    bfd = optional(object({
      session_initialization_mode = string
      min_transmit_interval       = optional(number)
      min_receive_interval        = optional(number)
      multiplier                  = optional(number)
    }))
    md5_authentication_key = optional(object({
      name = string
      key  = string
    }))
  })
  default = null
}

variable "project" {
  description = "The project ID to deploy to"
  type        = string
  default     = ""
}

variable "region" {
  description = "Region where the attachment resides"
  type        = string
  default     = ""
}

variable "router" {
  description = "Name of the router the attachment resides"
  type        = string
  default     = ""
}

variable "type" {
  description = "The type of InterconnectAttachment you wish to create"
  type        = string
  default     = "DEDICATED"
}

variable "vlan_tag8021q" {
  description = "The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094."
  type        = string
  default     = null
}
