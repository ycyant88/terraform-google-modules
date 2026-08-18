variable "parent_id" {
  description = "The parent of this AccessPolicy in the Cloud Resource Hierarchy. As of now, only organization are accepted as parent."
  type        = string
  default     = ""
}

variable "policy_name" {
  description = "The policy's name."
  type        = string
  default     = ""
}

variable "scopes" {
  description = "Folder or project on which this policy is applicable. Format: 'folders/FOLDER_ID' or 'projects/PROJECT_NUMBER'"
  type        = list(string)
  default     = []
}
