variable "admin_ranges" {
  description = "IP CIDR ranges that have complete access to all subnets."
  type        = list(any)
  default     = []
}

variable "admin_ranges_enabled" {
  description = "Enable admin ranges-based rules."
  type        = string
  default     = false
}

variable "custom_rules" {
  description = "List of custom rule definitions (refer to variables file for syntax)."
  type = map(object({
    description          = string
    direction            = string
    action               = string # (allow|deny)
    ranges               = list(string)
    sources              = list(string)
    targets              = list(string)
    use_service_accounts = bool
    rules = list(object({
      protocol = string
      ports    = list(string)
    }))
    extra_attributes = map(string)
  }))
  default = {}
}

variable "http_source_ranges" {
  description = "List of IP CIDR ranges for tag-based HTTP rule, defaults to 0.0.0.0/0."
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "https_source_ranges" {
  description = "List of IP CIDR ranges for tag-based HTTPS rule, defaults to 0.0.0.0/0."
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "internal_allow" {
  description = "Allow rules for internal ranges."
  type        = list(any)
  default     = [{ "protocol" : "icmp" }]
}

variable "internal_ranges" {
  description = "IP CIDR ranges for intra-VPC rules."
  type        = list(any)
  default     = []
}

variable "internal_ranges_enabled" {
  description = "Create rules for intra-VPC ranges."
  type        = string
  default     = false
}

variable "network" {
  description = "Name of the network this set of firewall rules applies to."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project id of the project that holds the network."
  type        = string
  default     = ""
}

variable "ssh_source_ranges" {
  description = "List of IP CIDR ranges for tag-based SSH rule, defaults to 0.0.0.0/0."
  type        = list(any)
  default     = ["0.0.0.0/0"]
}
