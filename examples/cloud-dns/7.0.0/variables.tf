variable "default_key_specs_key" {
  description = "Object containing default key signing specifications : algorithm, key_length, key_type, kind. Please see https://www.terraform.io/docs/providers/google/r/dns_managed_zone#dnssec_config for futhers details"
  type        = any
  default     = {}
}

variable "default_key_specs_zone" {
  description = "Object containing default zone signing specifications : algorithm, key_length, key_type, kind. Please see https://www.terraform.io/docs/providers/google/r/dns_managed_zone#dnssec_config for futhers details"
  type        = any
  default     = {}
}

variable "description" {
  description = "zone description (shown in console)"
  type        = string
  default     = "Managed by Terraform"
}

variable "dnssec_config" {
  description = "Object containing : kind, non_existence, state. Please see https://www.terraform.io/docs/providers/google/r/dns_managed_zone#dnssec_config for futhers details"
  type        = any
  default     = {}
}

variable "domain" {
  description = "Zone domain, must end with a period."
  type        = string
  default     = ""
}

variable "enable_logging" {
  description = "Enable query logging for this ManagedZone"
  type        = bool
  default     = false
}

variable "force_destroy" {
  description = "Set this true to delete all records in the zone."
  type        = bool
  default     = false
}

variable "gke_clusters_list" {
  description = "The list of Google Kubernetes Engine clusters that can see this zone."
  type        = list(string)
  default     = []
}

variable "iam_choice" {
  description = "Choose one of the following 'iam_binding', 'iam_member' or 'iam_policy' for managed zone iam"
  type        = string
  default     = null
}

variable "labels" {
  description = "A set of key/value label pairs to assign to this ManagedZone"
  type        = map(any)
  default     = {}
}

variable "member" {
  description = "Identities the user/service account that will be granted the privilege in role (for case: managed_zone_iam_member)"
  type        = string
  default     = null
}

variable "members" {
  description = "Identities the users/service accounts that will be granted the privilege in role (for case: managed_zone_iam_policy, managed_zone_iam_binding)"
  type        = list(string)
  default     = null
}

variable "name" {
  description = "Zone name, must be unique within the project."
  type        = string
  default     = ""
}

variable "private_visibility_config_networks" {
  description = "List of VPC self links that can see this zone."
  type        = list(string)
  default     = []
}

variable "project_id" {
  description = "Project id for the zone."
  type        = string
  default     = ""
}

variable "recordsets" {
  description = "List of DNS record objects to manage, in the standard terraform dns structure."
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    records = optional(list(string), null)

    routing_policy = optional(object({
      wrr = optional(list(object({
        weight  = number
        records = list(string)
      })), [])
      geo = optional(list(object({
        location = string
        records  = list(string)
      })), [])
    }))
  }))
  default = []
}

variable "role" {
  description = "The role that should be applied"
  type        = string
  default     = null
}

variable "service_namespace_url" {
  description = "The fully qualified or partial URL of the service directory namespace that should be associated with the zone. This should be formatted like https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace_id} or simply projects/{project}/locations/{location}/namespaces/{namespace_id}."
  type        = string
  default     = ""
}

variable "target_name_server_addresses" {
  description = "List of target name servers for forwarding zone."
  type        = list(map(any))
  default     = []
}

variable "target_network" {
  description = "Peering network."
  type        = string
  default     = ""
}

variable "type" {
  description = "Type of zone to create, valid values are 'public', 'private', 'forwarding', 'peering', 'reverse_lookup' and 'service_directory'."
  type        = string
  default     = "private"
}
