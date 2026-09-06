variable "description" {
  description = "An optional description of this resource. Provide this property when you create the resource"
  type        = string
  default     = null
}

variable "policy_name" {
  description = "User-provided name of the Network firewall policy"
  type        = string
  default     = ""
}

variable "policy_region" {
  description = "Location of the firewall policy. Needed for regional firewall policies. Default is null (Global firewall policy)"
  type        = string
  default     = null
}

variable "project_id" {
  description = "Project ID of the Network firewall policy"
  type        = string
  default     = ""
}

variable "rules" {
  description = "List of Ingress/Egress rules"
  type = list(object({
    priority                = number
    direction               = string
    action                  = string
    rule_name               = optional(string)
    disabled                = optional(bool)
    description             = optional(string)
    enable_logging          = optional(bool)
    target_secure_tags      = optional(list(string))
    target_service_accounts = optional(list(string))
    match = object({
      src_ip_ranges             = optional(list(string), [])
      src_fqdns                 = optional(list(string), [])
      src_region_codes          = optional(list(string), [])
      src_secure_tags           = optional(list(string), [])
      src_address_groups        = optional(list(string), [])
      dest_ip_ranges            = optional(list(string), [])
      dest_fqdns                = optional(list(string), [])
      dest_region_codes         = optional(list(string), [])
      dest_threat_intelligences = optional(list(string), [])
      dest_address_groups       = optional(list(string), [])
      layer4_configs = optional(list(object({
        ip_protocol = optional(string, "all")
        ports       = optional(list(string), [])
      })), [{}])
    })
  }))
  default = []
}

variable "target_vpcs" {
  description = "List of target VPC IDs that the firewall policy will be attached to"
  type        = list(string)
  default     = []
}
