variable "domains_to_allow" {
  description = "The list of domains to allow users from. At least one valid value for 'domains_to_allow' or 'principal_set_org_ids' must be provided"
  type        = list(string)
  default     = []
}

variable "exclude_folders" {
  description = "Set of folders to exclude from the policy"
  type        = set(string)
  default     = []
}

variable "exclude_projects" {
  description = "Set of projects to exclude from the policy"
  type        = set(string)
  default     = []
}

variable "folder_id" {
  description = "The folder id for putting the policy"
  type        = string
  default     = null
}

variable "organization_id" {
  description = "The organization id for putting the policy"
  type        = string
  default     = null
}

variable "policy_for" {
  description = "Resource hierarchy node to apply the policy to: can be one of organization, folder, or project."
  type        = string
  default     = ""
}

variable "principal_set_org_ids" {
  description = "The list of GCP Organization IDs to allow via Organization Principal Sets (e.g., ['123456789012']). At least one valid value for 'principal_set_org_ids' or 'domains_to_allow' must be provided. See https://docs.cloud.google.com/organization-policy/restrict-domains#retrieving_organization_id"
  type        = list(string)
  default     = []
}

variable "project_id" {
  description = "The project id for putting the policy"
  type        = string
  default     = null
}
