variable "cluster_endpoint" {
  description = "Kubernetes cluster endpoint."
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = "GCP cluster name used to reach cluster and which becomes the cluster name in the Config Sync kubernetes custom resource."
  type        = string
  default     = ""
}

variable "create_ssh_key" {
  description = "Controls whether a key will be generated for Git authentication"
  type        = bool
  default     = true
}

variable "hierarchy_controller" {
  description = "Configurations for Hierarchy Controller. See [Hierarchy Controller docs](https://cloud.google.com/kubernetes-engine/docs/add-on/config-sync/how-to/installing-hierarchy-controller) for more details."
  type        = map(any)
  default     = ""
}

variable "location" {
  description = "GCP location used to reach cluster."
  type        = string
  default     = ""
}

variable "operator_path" {
  description = "Path to the operator yaml config. If unset, will download from GCS releases."
  type        = string
  default     = ""
}

variable "policy_dir" {
  description = "Subfolder containing configs in ACM Git repo. If un-set, uses Config Management default."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "GCP project_id used to reach cluster."
  type        = string
  default     = ""
}

variable "secret_type" {
  description = "credential secret type, passed through to ConfigManagement spec.git.secretType. Overriden to value 'ssh' if create_ssh_key is true"
  type        = string
  default     = ""
}

variable "source_format" {
  description = "Configures a non-hierarchical repo if set to 'unstructured'. Uses [Config Sync defaults](https://cloud.google.com/kubernetes-engine/docs/add-on/config-sync/how-to/installing#configuring-config-management-operator) when unset."
  type        = string
  default     = ""
}

variable "ssh_auth_key" {
  description = "Key for Git authentication. Overrides 'create_ssh_key' variable. Can be set using 'file(path/to/file)'-function."
  type        = string
  default     = ""
}

variable "sync_branch" {
  description = "ACM repo Git branch. If un-set, uses Config Management default."
  type        = string
  default     = ""
}

variable "sync_repo" {
  description = "ACM Git repo address"
  type        = string
  default     = ""
}
