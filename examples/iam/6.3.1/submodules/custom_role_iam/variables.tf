variable "description" {
  description = "Description of Custom role."
  type        = string
  default     = ""
}

variable "members" {
  description = "List of members to be added to custom role."
  type        = list(string)
  default     = ""
}

variable "permissions" {
  description = "IAM permissions assigned to Custom Role."
  type        = list(string)
  default     = ""
}

variable "role_id" {
  description = "ID of the Custom Role."
  type        = string
  default     = ""
}

variable "stage" {
  description = "The current launch stage of the role. Defaults to GA."
  type        = string
  default     = "GA"
}

variable "target_id" {
  description = "Variable for project or organization ID."
  type        = string
  default     = ""
}

variable "target_level" {
  description = "String variable to denote if custom role being created is at project or organization level."
  type        = string
  default     = "project"
}

variable "title" {
  description = "Human-readable title of the Custom Role, defaults to role_id."
  type        = string
  default     = ""
}
