variable "domain" {
  description = "Zone domain, must end with a period."
  type        = string
  default     = ""
}

variable "name" {
  description = "Zone name, must be unique within the project."
  type        = string
  default     = ""
}

variable "private_visibility_config" {
  description = "List of private visibility config maps, not used for public zones."
  type        = list(any)
  default     = []
}

variable "project_id" {
  description = "Project id for the zone."
  type        = string
  default     = ""
}

variable "record_data" {
  description = "List of maps with type, rrdatas and optional ttl for static zone records."
  type        = list(any)
  default     = []
}

variable "record_names" {
  description = "List of record names for static zones."
  type        = list(any)
  default     = []
}

variable "target_name_servers" {
  description = "List of target name servers for forwarding zone."
  type        = list(any)
  default     = []
}

variable "target_network" {
  description = "Peering network."
  type        = string
  default     = ""
}

variable "zone_type" {
  description = "Type of zone to create, valid values are 'public', 'private', 'forwarding', 'peering'."
  type        = string
  default     = "private"
}
