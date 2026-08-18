variable "append_to_startup_script" {
  description = "Full path to file with content to be added to the startup script."
  type        = string
  default     = ""
}

variable "boot_disk_size_gb" {
  description = "The boot disk size in gb for the Datalab instance"
  type        = string
  default     = 20
}

variable "create_disk" {
  description = "Create a persistent data disk"
  type        = bool
  default     = true
}

variable "create_fw_rule" {
  description = "Flag to create Firewall rule for SSH access to Datalab"
  type        = bool
  default     = true
}

variable "datalab_console_log_level" {
  description = "The log level for which log entries from the Datalab instance will be written to StackDriver logging. Valid choices: (trace,debug,info,warn,error,fatal)"
  type        = string
  default     = "warn"
}

variable "datalab_docker_image" {
  description = "Datalab docker image to use"
  type        = string
  default     = "gcr.io/cloud-datalab/datalab:latest"
}

variable "datalab_enable_backup" {
  description = "Automatically backup the disk contents to Cloud Storage"
  type        = bool
  default     = true
}

variable "datalab_enable_swap" {
  description = "Enable swap on the Datalab instance"
  type        = bool
  default     = true
}

variable "datalab_idle_timeout" {
  description = "Interval after which an idle Datalab instance will shut down. You can specify a mix of days, hours, minutes and seconds using those names or d, h, m and s, for example 1h 30m. Specify 0s to disable"
  type        = string
  default     = "60m"
}

variable "datalab_user_email" {
  description = "Create the Datalab instance on behalf of the specified user"
  type        = string
  default     = ""
}

variable "existing_disk_name" {
  description = "Name of an existing persistent disk you want to use"
  type        = string
  default     = ""
}

variable "fluentd_docker_image" {
  description = "Fluentd docker image to use"
  type        = string
  default     = "gcr.io/google-containers/fluentd-gcp:2.0.17"
}

variable "labels" {
  description = "A map of key/value label pairs to assign to the instance."
  type        = map(string)
  default     = {}
}

variable "machine_type" {
  description = "The machine type for the Datalab instance"
  type        = string
  default     = "n1-standard-2"
}

variable "name" {
  description = "The name of the Datalab instance"
  type        = string
  default     = "datalab"
}

variable "network_name" {
  description = "The network the Datalab instance will be in"
  type        = string
  default     = ""
}

variable "persistent_disk_size_gb" {
  description = "The persistent disk size in gb for the Datalab instance"
  type        = number
  default     = 200
}

variable "project_id" {
  description = "The project ID used for the Datalab instance"
  type        = string
  default     = ""
}

variable "service_account" {
  description = "The service account attached to the Datalab instance. If empty the default Google Compute Engine service account is used"
  type        = string
  default     = ""
}

variable "subnet_name" {
  description = "The subnet the Datalab instance will be in"
  type        = string
  default     = ""
}

variable "zone" {
  description = "The zone the Datalab instance will be deployed to"
  type        = string
  default     = ""
}
