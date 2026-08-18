variable "client_iam_module" {
  description = "The Forseti Client IAM module"
  type        = string
  default     = ""
}

variable "cloud_profiler_enabled" {
  description = "Enable the Cloud Profiler"
  type        = bool
  default     = false
}

variable "cloudsql_module" {
  description = "The CloudSQL module"
  type        = string
  default     = ""
}

variable "cloudsql_proxy_arch" {
  description = "CloudSQL Proxy architecture"
  type        = string
  default     = "linux.amd64"
}

variable "forseti_home" {
  description = "Forseti installation directory"
  type        = string
  default     = "$USER_HOME/forseti-security"
}

variable "forseti_repo_url" {
  description = "Git repo for the Forseti installation"
  type        = string
  default     = "https://github.com/forseti-security/forseti-security"
}

variable "forseti_run_frequency" {
  description = "Schedule of running the Forseti scans"
  type        = string
  default     = ""
}

variable "forseti_version" {
  description = "The version of Forseti to install"
  type        = string
  default     = "v2.23.1"
}

variable "mailjet_enabled" {
  description = "Enable mailjet_rest library"
  type        = bool
  default     = false
}

variable "network" {
  description = "The VPC where the Forseti client and server will be created"
  type        = string
  default     = "default"
}

variable "network_project" {
  description = "The project containing the VPC and subnetwork where the Forseti client and server will be created"
  type        = string
  default     = ""
}

variable "policy_library_home" {
  description = "The local policy library directory."
  type        = string
  default     = "$USER_HOME/policy-library"
}

variable "policy_library_repository_url" {
  description = "The git repository containing the policy-library."
  type        = string
  default     = ""
}

variable "policy_library_sync_enabled" {
  description = "Sync config validator policy library from private repository."
  type        = string
  default     = "false"
}

variable "policy_library_sync_gcs_directory_name" {
  description = "The directory name of the GCS folder used for the policy library sync config."
  type        = string
  default     = "policy_library_sync"
}

variable "policy_library_sync_git_sync_tag" {
  description = "Tag for the git-sync image."
  type        = string
  default     = "v3.1.2"
}

variable "policy_library_sync_ssh_known_hosts" {
  description = "List of authorized public keys for SSH host of the policy library repository."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type        = string
  default     = ""
}

variable "server_access_config" {
  description = "Server instance 'access_config' block"
  type        = map(any)
  default     = {}
}

variable "server_boot_disk_size" {
  description = "Size of the GCE instance boot disk in GBs."
  type        = string
  default     = "100"
}

variable "server_boot_disk_type" {
  description = "GCE instance boot disk type, can be pd-standard or pd-ssd."
  type        = string
  default     = "pd-ssd"
}

variable "server_boot_image" {
  description = "GCE Forseti Server boot image - Currently only Ubuntu is supported"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "server_config_module" {
  description = "The Forseti Server config module"
  type        = string
  default     = ""
}

variable "server_gcs_module" {
  description = "The Forseti Server GCS module"
  type        = string
  default     = ""
}

variable "server_grpc_allow_ranges" {
  description = "List of CIDRs that will be allowed gRPC access to forseti server"
  type        = list(string)
  default     = []
}

variable "server_iam_module" {
  description = "The Forseti Server IAM module"
  type        = string
  default     = ""
}

variable "server_instance_metadata" {
  description = "Metadata key/value pairs to make available from within the server instance."
  type        = map(string)
  default     = {}
}

variable "server_private" {
  description = "Enable private Forseti server VM (no public IP)"
  type        = string
  default     = "false"
}

variable "server_region" {
  description = "GCE Forseti Server region"
  type        = string
  default     = "us-central1"
}

variable "server_rules_module" {
  description = "The Forseti Server rules module"
  type        = string
  default     = ""
}

variable "server_ssh_allow_ranges" {
  description = "List of CIDRs that will be allowed ssh access to forseti server"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "server_tags" {
  description = "VM instance tags"
  type        = list(string)
  default     = []
}

variable "server_type" {
  description = "GCE Forseti Server machine type"
  type        = string
  default     = "n1-standard-8"
}

variable "services" {
  description = "An artificial dependency to bypass #10462"
  type        = list(string)
  default     = []
}

variable "subnetwork" {
  description = "The VPC subnetwork where the Forseti client and server will be created"
  type        = string
  default     = "default"
}

variable "suffix" {
  description = "The random suffix to append to all Forseti resources"
  type        = string
  default     = ""
}
