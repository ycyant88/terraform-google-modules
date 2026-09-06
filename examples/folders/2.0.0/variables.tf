variable "all_folder_admins" {
  description = "List of IAM-style members that will get the extended permissions across all the folders."
  type        = list(string)
  default     = []
}

variable "folder_admin_roles" {
  description = "List of roles that will be applied to per folder owners on their respective folder."
  type        = list(string)
  default     = ["roles/owner", "roles/resourcemanager.folderViewer", "roles/resourcemanager.projectCreator", "roles/compute.networkAdmin"]
}

variable "names" {
  description = "Folder names."
  type        = list(string)
  default     = []
}

variable "parent" {
  description = "The resource name of the parent Folder or Organization. Must be of the form folders/folder_id or organizations/org_id"
  type        = string
  default     = ""
}

variable "per_folder_admins" {
  description = "List of IAM-style members per folder who will get extended permissions."
  type        = list(string)
  default     = []
}

variable "prefix" {
  description = "Optional prefix to enforce uniqueness of folder names."
  type        = string
  default     = ""
}

variable "set_roles" {
  description = "Set roles to actors passed in role_members variable."
  type        = bool
  default     = false
}
