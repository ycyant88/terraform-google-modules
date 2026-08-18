variable "customer_id" {
  description = "Customer ID of the organization to create the group in. One of domain or customer_id must be specified"
  type        = string
  default     = ""
}

variable "description" {
  description = "Description of the group"
  type        = string
  default     = ""
}

variable "display_name" {
  description = "Display name of the group"
  type        = string
  default     = ""
}

variable "domain" {
  description = "Domain of the organization to create the group in. One of domain or customer_id must be specified"
  type        = string
  default     = ""
}

variable "id" {
  description = "ID of the group. For Google-managed entities, the ID must be the email address the group"
  type        = string
  default     = ""
}

variable "initial_group_config" {
  description = "The initial configuration options for creating a Group. See the API reference for possible values. Possible values are INITIAL_GROUP_CONFIG_UNSPECIFIED, WITH_INITIAL_OWNER, and EMPTY."
  type        = string
  default     = "EMPTY"
}

variable "managers" {
  description = "Managers of the group. Each entry is the ID of an entity. For Google-managed entities, the ID must be the email address of an existing group, user or service account"
  type        = list(any)
  default     = []
}

variable "members" {
  description = "Members of the group. Each entry is the ID of an entity. For Google-managed entities, the ID must be the email address of an existing group, user or service account"
  type        = list(any)
  default     = []
}

variable "owners" {
  description = "Owners of the group. Each entry is the ID of an entity. For Google-managed entities, the ID must be the email address of an existing group, user or service account"
  type        = list(any)
  default     = []
}
