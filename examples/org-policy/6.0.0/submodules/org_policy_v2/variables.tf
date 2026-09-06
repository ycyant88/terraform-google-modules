variable "constraint" {
  description = "The constraint to be applied"
  type        = string
  default     = ""
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

variable "inherit_from_parent" {
  description = "Determines the inheritance behavior for this policy (only supported on list constraints)"
  type        = bool
  default     = "false"
}

variable "policy_root" {
  description = "Resource hierarchy node to apply the policy to: can be one of organization, folder, or project."
  type        = string
  default     = "organization"
}

variable "policy_root_id" {
  description = "The policy root id, either of organization_id, folder_id or project_id"
  type        = string
  default     = null
}

variable "policy_type" {
  description = "The constraint type to work with (either 'boolean' or 'list')"
  type        = string
  default     = "list"
}

variable "rules" {
  description = "List of rules per policy."
  type = list(object(
    {
      enforcement = bool
      allow       = optional(list(string), [])
      deny        = optional(list(string), [])
      conditions = optional(list(object(
        {
          description = string
          expression  = string
          title       = string
          location    = string
        }
      )), [])
    }
  ))
  default = ""
}
