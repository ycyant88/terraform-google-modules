variable "all_folder_admins" {
  description = "List of IAM-style members that will get the extended permissions across all the folders."
  type        = list(any)
  default     = []
}

variable "folder_admin_roles" {
  description = "List of roles that will be applied to per folder owners on their respective folder."
  type        = list(any)
  default     = ["roles/owner", "roles/resourcemanager.folderViewer", "roles/resourcemanager.projectCreator", "roles/compute.networkAdmin"]
}

variable "names" {
  description = "Folder names."
  type        = list(any)
  default     = []
}

variable "parent_id" {
  description = "Id of the resource under which the folder will be placed."
  type        = string
  default     = ""
}

variable "parent_type" {
  description = "Type of the parent reosurce, defaults to organization."
  type        = string
  default     = "organization"
}

variable "per_folder_admins" {
  description = "List of IAM-style members per folder who will get extended permissions."
  type        = list(any)
  default     = []
}

variable "prefix" {
  description = "Optional prefix to enforce uniqueness of folder names."
  type        = string
  default     = ""
}

variable "set_roles" {
  description = "Set roles to actors passed in role_members variable."
  type        = string
  default     = false
}
