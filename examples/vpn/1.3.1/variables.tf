variable "advertised_route_priority" {
  description = "Please enter the priority for the advertised route to BGP peer(default is 100)"
  type        = number
  default     = 100
}

variable "bgp_cr_session_range" {
  description = "Please enter the cloud-router interface IP/Session IP"
  type        = list(string)
  default     = ["169.254.1.1/30", "169.254.1.5/30"]
}

variable "bgp_remote_session_range" {
  description = "Please enter the remote environments BGP Session IP"
  type        = list(string)
  default     = ["169.254.1.2", "169.254.1.6"]
}

variable "cr_enabled" {
  description = "If there is a cloud router for BGP routing"
  type        = bool
  default     = false
}

variable "cr_name" {
  description = "The name of cloud router for BGP routing"
  type        = string
  default     = ""
}

variable "gateway_name" {
  description = "The name of VPN gateway"
  type        = string
  default     = "test-vpn"
}

variable "ike_version" {
  description = "Please enter the IKE version used by this tunnel (default is IKEv2)"
  type        = number
  default     = 2
}

variable "local_traffic_selector" {
  description = "Local traffic selector to use when establishing the VPN tunnel with peer VPN gateway.\nValue should be list of CIDR formatted strings and ranges should be disjoint.\n"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "network" {
  description = "The name of VPC being created"
  type        = string
  default     = ""
}

variable "peer_asn" {
  description = "Please enter the ASN of the BGP peer that cloud router will use"
  type        = list(string)
  default     = ["65101"]
}

variable "peer_ips" {
  description = "IP address of remote-peer/gateway"
  type        = list(string)
  default     = ""
}

variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region in which you want to create the VPN gateway"
  type        = string
  default     = ""
}

variable "remote_subnet" {
  description = "remote subnet ip range in CIDR format - x.x.x.x/x"
  type        = list(string)
  default     = []
}

variable "remote_traffic_selector" {
  description = "Remote traffic selector to use when establishing the VPN tunnel with peer VPN gateway.\nValue should be list of CIDR formatted strings and ranges should be disjoint.\n"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "route_priority" {
  description = "Priority for static route being created"
  type        = number
  default     = 1000
}

variable "shared_secret" {
  description = "Please enter the shared secret/pre-shared key"
  type        = string
  default     = ""
}

variable "tunnel_count" {
  description = "The number of tunnels from each VPN gw (default is 1)"
  type        = number
  default     = 1
}

variable "tunnel_name_prefix" {
  description = "The optional custom name of VPN tunnel being created"
  type        = string
  default     = ""
}
