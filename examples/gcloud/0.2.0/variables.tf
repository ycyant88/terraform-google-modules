variable "additional_components" {
  description = "Additional gcloud CLI components to install. Defaults to none. Valid value are components listed in gcloud components list"
  type        = list(any)
  default     = []
}

variable "create_cmd_body" {
  description = "On create, the command body you'd like to run with your entrypoint."
  type        = string
  default     = "info"
}

variable "create_cmd_entrypoint" {
  description = "On create, the command entrypoint you'd like to use."
  type        = string
  default     = "gcloud"
}

variable "destroy_cmd_body" {
  description = "On destroy, the command body you'd like to run with your entrypoint."
  type        = string
  default     = "info"
}

variable "destroy_cmd_entrypoint" {
  description = "On destroy, the command entrypoint you'd like to use."
  type        = string
  default     = "gcloud"
}

variable "enabled" {
  description = "Flag to optionally disable usage of this module."
  type        = bool
  default     = true
}

variable "platform" {
  description = "Platform CLI will run on. Defaults to linux. Valid values: linux, darwin"
  type        = string
  default     = "linux"
}

variable "service_account_key_file" {
  description = "Path to service account key file to run gcloud auth activate-service-account with. Optional."
  type        = string
  default     = ""
}

variable "use_tf_google_credentials_env_var" {
  description = "Use GOOGLE_CREDENTIALS environment variable to run gcloud auth activate-service-account with. Optional."
  type        = string
  default     = false
}
