variable "bgp" {
  description = "BGP information specific to this router."
  type = object({
    asn               = string
    advertise_mode    = optional(string, "CUSTOM")
    advertised_groups = optional(list(string))
    advertised_ip_ranges = optional(list(object({
      range       = string
      description = optional(string)
    })), [])
    keepalive_interval = optional(number)
  })
  default = null
}

variable "description" {
  description = "An optional description of this resource"
  type        = string
  default     = null
}

variable "encrypted_interconnect_router" {
  description = "An optional field to indicate if a router is dedicated to use with encrypted Interconnect Attachment"
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the router"
  type        = string
  default     = ""
}

variable "nats" {
  description = "NATs to deploy on this router."
  type = list(object({
    name                                = string
    nat_ip_allocate_option              = optional(string)
    source_subnetwork_ip_ranges_to_nat  = optional(string)
    nat_ips                             = optional(list(string), [])
    drain_nat_ips                       = optional(list(string), [])
    min_ports_per_vm                    = optional(number)
    max_ports_per_vm                    = optional(number)
    udp_idle_timeout_sec                = optional(number)
    icmp_idle_timeout_sec               = optional(number)
    tcp_established_idle_timeout_sec    = optional(number)
    tcp_transitory_idle_timeout_sec     = optional(number)
    tcp_time_wait_timeout_sec           = optional(number)
    enable_endpoint_independent_mapping = optional(bool)
    enable_dynamic_port_allocation      = optional(bool)

    log_config = optional(object({
      enable = optional(bool, true)
      filter = optional(string, "ALL")
    }), {})

    subnetworks = optional(list(object({
      name                     = string
      source_ip_ranges_to_nat  = list(string)
      secondary_ip_range_names = optional(list(string))
    })), [])

  }))
  default = []
}

variable "network" {
  description = "A reference to the network to which this router belongs"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project ID to deploy to"
  type        = string
  default     = ""
}

variable "region" {
  description = "Region where the router resides"
  type        = string
  default     = ""
}
