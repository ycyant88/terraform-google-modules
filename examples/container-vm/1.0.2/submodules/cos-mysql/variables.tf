variable "boot_disk_size" {
  description = "Size of boot disk."
  type        = number
  default     = 40
}

variable "client_cidrs" {
  description = "Client IP CIDR ranges to set in the firewall rule."
  type        = list(string)
  default     = []
}

variable "container_image" {
  description = "MySQL container version."
  type        = string
  default     = "mysql:5.7"
}

variable "create_firewall_rule" {
  description = "Create tag-based firewall rule."
  type        = bool
  default     = false
}

variable "data_disk_size" {
  description = "Size of data disk."
  type        = number
  default     = ""
}

variable "data_disk_type" {
  description = "Type of data disk."
  type        = string
  default     = "pd-ssd"
}

variable "host_project_id" {
  description = "VPC host project id if the instance is in a service project."
  type        = string
  default     = ""
}

variable "instance_count" {
  description = "Number of instances to create."
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Instance machine type."
  type        = string
  default     = "n1-standard-2"
}

variable "kms_data" {
  description = "Map with KMS project_id, keyring, location and key if password is encrypted with KMS."
  type        = object({ key = string, keyring = string, location = string })
  default     = ""
}

variable "labels" {
  description = "Labels to be attached to the resources"
  type        = map(string)
  default     = { "service" : "mysql" }
}

variable "log_driver" {
  description = "Docker log driver to use for CoreDNS."
  type        = string
  default     = "gcplogs"
}

variable "my_cnf" {
  description = "Content of the my.cnf file that will be written on the instances."
  type        = string
  default     = ""
}

variable "mysql_port" {
  description = "Port MySQL will listen on."
  type        = number
  default     = 3306
}

variable "network" {
  description = "Self link of the VPC subnet to use for firewall rules."
  type        = string
  default     = ""
}

variable "network_tag" {
  description = "Network tag that identifies the instances."
  type        = string
  default     = "mysql"
}

variable "password" {
  description = "Provide a plain text on KMS-encrypted password instead of using the auto-generated one."
  type        = string
  default     = ""
}

variable "prefix" {
  description = "Prefix to prepend to resource names."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project id where the instances will be created."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region for internal addresses."
  type        = string
  default     = ""
}

variable "scopes" {
  description = "Instance scopes."
  type        = list(string)
  default     = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/pubsub", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
}

variable "service_account" {
  description = "Instance service account."
  type        = string
  default     = ""
}

variable "stackdriver_logging" {
  description = "Enable the Stackdriver logging agent."
  type        = bool
  default     = true
}

variable "stackdriver_monitoring" {
  description = "Enable the Stackdriver monitoring agent."
  type        = bool
  default     = true
}

variable "subnetwork" {
  description = "Self link of the VPC subnet to use for the internal interface."
  type        = string
  default     = ""
}

variable "vm_tags" {
  description = "Additional network tags for the instances."
  type        = list(string)
  default     = []
}

variable "zone" {
  description = "Instance zone."
  type        = string
  default     = ""
}
