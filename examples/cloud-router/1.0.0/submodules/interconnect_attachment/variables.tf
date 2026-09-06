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
  default     = ""
}

variable "description" {
  description = "An optional description of this resource"
  type        = string
  default     = ""
}

variable "interconnect" {
  description = "URL of the underlying Interconnect object that this attachment's traffic will traverse through."
  type        = string
  default     = ""
}

variable "interface" {
  description = "Interface to deploy for this attachment."
  type        = any
  default     = ""
}

variable "name" {
  description = "The name of the interconnect attachment"
  type        = string
  default     = ""
}

variable "peer" {
  description = "BGP Peer for this attachment."
  type        = any
  default     = ""
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
  default     = ""
}
