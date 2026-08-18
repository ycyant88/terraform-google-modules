variable "activate_apis" {
  description = "Service APIs to enable."
  type        = list(any)
  default     = []
}

variable "auto_create_network" {
  description = "Whether to create the default network for the project"
  type        = string
  default     = false
}

variable "billing_account" {
  description = "Billing account id."
  type        = string
  default     = ""
}

variable "custom_roles" {
  description = "Map of role name => comma-delimited list of permissions to create in this project."
  type        = map(any)
  default     = {}
}

variable "editors" {
  description = "Optional list of IAM-format members to set as project editor."
  type        = list(any)
  default     = []
}

variable "extra_bindings_members" {
  description = "List of comma-delimited IAM-format members for additional IAM bindings, one item per role."
  type        = list(any)
  default     = []
}

variable "extra_bindings_roles" {
  description = "List of roles for additional IAM bindings, pair with members list below."
  type        = list(any)
  default     = []
}

variable "gce_service_account_roles" {
  description = "List of project id=>role to assign to the default GCE service account."
  type        = list(any)
  default     = []
}

variable "labels" {
  description = "Resource labels."
  type        = map(any)
  default     = {}
}

variable "lien_reason" {
  description = "If non-empty, creates a project lien with this description."
  type        = string
  default     = ""
}

variable "name" {
  description = "Project name and id suffix."
  type        = string
  default     = ""
}

variable "oslogin" {
  description = "Enable oslogin."
  type        = string
  default     = false
}

variable "oslogin_admins" {
  description = "List of IAM-format members that will get OS Login admin role."
  type        = list(any)
  default     = []
}

variable "oslogin_users" {
  description = "List of IAM-format members that will get OS Login user role."
  type        = list(any)
  default     = []
}

variable "owners" {
  description = "Optional list of IAM-format members to set as project owners."
  type        = list(any)
  default     = []
}

variable "parent" {
  description = "The resource name of the parent Folder or Organization. Must be of the form folders/folder_id or organizations/org_id"
  type        = string
  default     = ""
}

variable "prefix" {
  description = "Prefix used to generate project id and name"
  type        = string
  default     = ""
}

variable "viewers" {
  description = "Optional list of IAM-format members to set as project viewers."
  type        = list(any)
  default     = []
}
