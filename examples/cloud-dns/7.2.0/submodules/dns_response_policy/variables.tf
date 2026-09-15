variable "description" {
  description = "The description of the response policy."
  type        = string
  default     = ""
}

variable "gke_clusters_list" {
  description = "The list of Google Kubernetes Engine clusters that can see this zone."
  type        = list(string)
  default     = []
}

variable "network_self_links" {
  description = "The self links of the network to which the dns response policy needs to be applied. Note that only one response policy can be applied on a network."
  type        = list(string)
  default     = []
}

variable "policy_name" {
  description = "Name of the DNS response policy."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project in which the DNS response policy needs to be created."
  type        = string
  default     = ""
}

variable "rules" {
  description = "  A Response Policy Rule is a selector that applies its behavior to queries that match the selector.\n  Selectors are DNS names, which may be wildcards or exact matches.\n  Takes a map as input where the key is the name of the rule. The map contains following attributes:\n  Key - Name of the rule\n  Value - Object of following attributes:\n    * dns_name - DNS name where policy will be applied.\n    * rule_behavior - Whether to override or passthru. Use value bypassResponsePolicy for passthru rules and skip this key for overriding rules.\n    * rule_local_datas - When the rule behavior is override, policy will answer this matched DNS name directly with this DNS data. These resource record sets override any other DNS behavior for the matched name.\n      * Each local datas object can contain following attributes:\n        Key - One of the valid DNS resource type.\n        Value - Object of following attributes:\n           - ttl -  Number of seconds that this ResourceRecordSet can be cached by resolvers.\n           - rrdatas - As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1)\n"
  type = map(object({
    dns_name      = string
    rule_behavior = optional(string)
    rule_local_datas = optional(map(object({
      ttl     = string
      rrdatas = list(string)
    })))
  }))
  default = ""
}
