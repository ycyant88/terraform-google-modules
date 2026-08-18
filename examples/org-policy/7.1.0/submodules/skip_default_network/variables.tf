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

variable "project_id" {
  description = "The project id for putting the policy"
  type        = string
  default     = null
}
