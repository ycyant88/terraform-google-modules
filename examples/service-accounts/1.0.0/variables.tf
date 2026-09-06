variable "billing_account_id" {
  description = "If assigning billing role, specificy a billing account (default is to assign at the organizational level)."
  type        = string
  default     = ""
}

variable "generate_keys" {
  description = "Generate keys for service accounts."
  type        = bool
  default     = false
}

variable "grant_billing_role" {
  description = "Grant billing user role."
  type        = bool
  default     = false
}

variable "grant_xpn_roles" {
  description = "Grant roles for shared VPC management."
  type        = bool
  default     = true
}

variable "names" {
  description = "Names of the service accounts to create."
  type        = list(string)
  default     = []
}

variable "org_id" {
  description = "Id of the organization for org-level roles."
  type        = string
  default     = ""
}

variable "prefix" {
  description = "Prefix applied to service account names."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project id where service account will be created."
  type        = string
  default     = ""
}

variable "project_roles" {
  description = "Common roles to apply to all service accounts, project=>role as elements."
  type        = list(string)
  default     = []
}
