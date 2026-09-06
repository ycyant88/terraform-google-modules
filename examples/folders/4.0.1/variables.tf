variable "all_folder_admins" {
  description = "List of IAM-style members that will get the extended permissions across all the folders."
  type        = list(string)
  default     = []
}

variable "folder_admin_roles" {
  description = "List of roles that will be applied to a folder if roles are not explictly specified in per_folder_admins"
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
  description = "IAM-style roles per members per folder who will get extended permissions. If roles are not provided for a folder/member combination, the list provided as folder_admin_roles will be applied as default."
  type = map(object({
    members = list(string)
    roles   = optional(list(string))
  }))
  default = {}
}

variable "prefix" {
  description = "Optional prefix to enforce uniqueness of folder names."
  type        = string
  default     = ""
}

variable "set_roles" {
  description = "Enable setting roles via the folder admin variables."
  type        = bool
  default     = false
}
