variable "allow" {
  description = "(Only for list constraints) List of values which should be allowed"
  type = 
  default = [""]
}

variable "constraint" {
  description = "The constraint to be applied"
  type = 
  default = ""
}

variable "deny" {
  description = "(Only for list constraints) List of values which should be denied"
  type = 
  default = [""]
}

variable "enforce" {
  description = "If boolean constraint, whether the policy is enforced at the root; if list constraint, whether to deny all (true) or allow all"
  type = 
  default = ""
}

variable "exclude_folders" {
  description = "List of folders to exclude from the policy"
  type = 
  default = [""]
}

variable "exclude_projects" {
  description = "List of projects to exclude from the policy"
  type = 
  default = [""]
}

variable "folder_id" {
  description = "The folder id for putting the policy"
  type = 
  default = ""
}

variable "organization_id" {
  description = "The organization id for putting the policy"
  type = 
  default = ""
}

variable "policy_type" {
  description = "The constraint type to work with (either 'boolean' or 'list')"
  type = 
  default = "list"
}

variable "project_id" {
  description = "The project id for putting the policy"
  type = 
  default = ""
}
