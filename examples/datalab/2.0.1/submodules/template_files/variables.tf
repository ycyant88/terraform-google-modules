variable "append_to_startup_script" {
  description = "Full path to file with content to be added to the startup script."
  type        = string
  default     = null
}

variable "cloud_config" {
  description = "Name of the cloud config template to use"
  type        = string
  default     = ""
}

variable "datalab_console_log_level" {
  description = "The log level for which log entries from the Datalab instance will be written to StackDriver logging. Valid choices: (trace,debug,info,warn,error,fatal)"
  type        = string
  default     = "warn"
}

variable "datalab_disk_name" {
  description = "Name of the persistent disk to mount to the Datalab instance"
  type        = string
  default     = ""
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

variable "fluentd_docker_image" {
  description = "Fluentd docker image to use"
  type        = string
  default     = "gcr.io/google-containers/fluentd-gcp:2.0.17"
}

variable "gpu_count" {
  description = "Number of GPUs for the Datalab instance. Valid values are: 0, 1, 2, 4, 8"
  type        = number
  default     = 0
}

variable "gpu_device_map" {
  description = "Cloud config to map the number of gpu devices"
  type        = map(string)
  default     = { "gpu_device_0" : "", "gpu_device_1" : "       --device /dev/nvidia0:/dev/nvidia0 \\\n", "gpu_device_2" : "       --device /dev/nvidia0:/dev/nvidia0 \\\n       --device /dev/nvidia1:/dev/nvidia1 \\\n", "gpu_device_4" : "       --device /dev/nvidia0:/dev/nvidia0 \\\n       --device /dev/nvidia1:/dev/nvidia1 \\\n       --device /dev/nvidia2:/dev/nvidia2 \\\n       --device /dev/nvidia3:/dev/nvidia3 \\\n", "gpu_device_8" : "       --device /dev/nvidia0:/dev/nvidia0 \\\n       --device /dev/nvidia1:/dev/nvidia1 \\\n       --device /dev/nvidia2:/dev/nvidia2 \\\n       --device /dev/nvidia3:/dev/nvidia3 \\\n       --device /dev/nvidia4:/dev/nvidia4 \\\n       --device /dev/nvidia5:/dev/nvidia5 \\\n       --device /dev/nvidia6:/dev/nvidia6 \\\n       --device /dev/nvidia7:/dev/nvidia7 \\\n" }
}
