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

variable "secret_type" {
  description = "credential secret type, passed through to ConfigManagement spec.git.secretType. Overriden to value 'ssh' if create_ssh_key is true"
  type        = string
  default     = ""
}

variable "skip_gcloud_download" {
  description = "Whether to skip downloading gcloud (assumes gcloud and kubectl already available outside the module)"
  type        = bool
  default     = false
}

variable "ssh_auth_key" {
  description = "Key for Git authentication. Overrides 'create_ssh_key' variable. Can be set using 'file(path/to/file)'-function."
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
