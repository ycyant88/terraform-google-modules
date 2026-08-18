variable "domains_to_allow" {
  description = "The list of domains to allow users from"
  type        = list(string)
  default     = ""
}

variable "exclude_folders" {
  description = "List of folders to exclude from the policy"
  type        = list(string)
  default     = [""]
}

variable "exclude_projects" {
  description = "List of projects to exclude from the policy"
  type        = list(string)
  default     = [""]
}

variable "folder_id" {
  description = "The folder id for putting the policy"
  type        = string
  default     = ""
}

variable "organization_id" {
  description = "The organization id for putting the policy"
  type        = string
  default     = ""
}

variable "policy_for" {
  description = "Resource hierarchy node to apply the policy to: can be one of organization, folder, or project."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project id for putting the policy"
  type        = string
  default     = ""
}
