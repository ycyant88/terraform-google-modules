variable "cluster_endpoint" {
  description = "Kubernetes cluster endpoint."
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = "The unique name to identify the cluster in ACM."
  type        = string
  default     = ""
}

variable "create_ssh_key" {
  description = "Controls whether a key will be generated for Git authentication"
  type        = bool
  default     = true
}

variable "enable_policy_controller" {
  description = "Whether to enable the ACM Policy Controller on the cluster"
  type        = bool
  default     = true
}

variable "install_template_library" {
  description = "Whether to install the default Policy Controller template library"
  type        = bool
  default     = true
}

variable "location" {
  description = "The location (zone or region) this cluster has been created in."
  type        = string
  default     = ""
}

variable "operator_path" {
  description = "Path to the operator yaml config. If unset, will download from GCS releases."
  type        = string
  default     = ""
}

variable "policy_dir" {
  description = "Subfolder containing configs in ACM Git repo"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project in which the resource belongs."
  type        = string
  default     = ""
}

variable "sync_branch" {
  description = "ACM repo Git branch"
  type        = string
  default     = "master"
}

variable "sync_repo" {
  description = "ACM Git repo address"
  type        = string
  default     = ""
}
