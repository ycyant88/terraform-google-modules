variable "additional_components" {
  description = "Additional gcloud CLI components to install. Valid value are components listed in gcloud components list"
  type        = list(string)
  default     = ["kubectl"]
}

variable "create_cmd_triggers" {
  description = "List of any additional triggers for the create command execution."
  type        = map(any)
  default     = {}
}

variable "enabled" {
  description = "Flag to optionally disable usage of this module."
  type        = bool
  default     = true
}

variable "gcloud_sdk_version" {
  description = "The gcloud sdk version to download."
  type        = string
  default     = "434.0.0"
}

variable "impersonate_service_account" {
  description = "An optional service account to impersonate for gcloud commands. If this service account is not specified, the module will use Application Default Credentials."
  type        = string
  default     = null
}

variable "kubectl_create_command" {
  description = "The kubectl command to create resources."
  type        = string
  default     = ""
}

variable "kubectl_destroy_command" {
  description = "The kubectl command to destroy resources."
  type        = string
  default     = ""
}

variable "membership_location" {
  description = "Membership location (Global/Region)."
  type        = string
  default     = ""
}

variable "membership_name" {
  description = "Membership name."
  type        = string
  default     = ""
}

variable "membership_project_id" {
  description = "Membership project ID."
  type        = string
  default     = ""
}

variable "module_depends_on" {
  description = "List of modules or resources this module depends on."
  type        = list(any)
  default     = []
}

variable "service_account_key_file" {
  description = "Path to service account key file to auth as for running gcloud container clusters get-credentials."
  type        = string
  default     = ""
}

variable "skip_download" {
  description = "Whether to skip downloading gcloud (assumes gcloud and kubectl are already available outside the module)."
  type        = bool
  default     = true
}

variable "upgrade" {
  description = "Whether to upgrade gcloud at runtime."
  type        = bool
  default     = true
}

variable "use_tf_google_credentials_env_var" {
  description = "Use GOOGLE_CREDENTIALS environment variable to run gcloud auth activate-service-account with. Optional."
  type        = bool
  default     = false
}
