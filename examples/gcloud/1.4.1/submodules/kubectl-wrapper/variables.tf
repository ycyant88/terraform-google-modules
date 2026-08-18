variable "additional_components" {
  description = "Additional gcloud CLI components to install. Defaults to installing kubectl. Valid value are components listed in gcloud components list"
  type        = list(any)
  default     = ["kubectl"]
}

variable "cluster_location" {
  description = "Cluster location (Zone/Region). Optional if use_existing_context is true."
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = "Cluster name. Optional if use_existing_context is true."
  type        = string
  default     = ""
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
  default     = "281.0.0"
}

variable "internal_ip" {
  description = "Use internal ip for the cluster endpoint."
  type        = bool
  default     = false
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

variable "module_depends_on" {
  description = "List of modules or resources this module depends on."
  type        = list(any)
  default     = []
}

variable "project_id" {
  description = "The project ID hosting the cluster. Optional if use_existing_context is true."
  type        = string
  default     = ""
}

variable "service_account_key_file" {
  description = "Path to service account key file to auth as for running gcloud container clusters get-credentials."
  type        = string
  default     = ""
}

variable "skip_download" {
  description = "Whether to skip downloading gcloud (assumes gcloud and kubectl is already available outside the module)"
  type        = bool
  default     = true
}

variable "upgrade" {
  description = "Whether to upgrade gcloud at runtime"
  type        = bool
  default     = true
}

variable "use_existing_context" {
  description = "Use existing kubecontext to auth kube-api."
  type        = bool
  default     = false
}
