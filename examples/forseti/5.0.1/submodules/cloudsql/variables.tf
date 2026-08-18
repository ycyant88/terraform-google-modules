variable "cloudsql_db_name" {
  description = "CloudSQL database name"
  type        = string
  default     = "forseti_security"
}

variable "cloudsql_disk_size" {
  description = "The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased."
  type        = string
  default     = "25"
}

variable "cloudsql_net_write_timeout" {
  description = "See MySQL documentation: https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_net_write_timeout"
  type        = string
  default     = "240"
}

variable "cloudsql_private" {
  description = "Whether to enable private network and not to create public IP for CloudSQL Instance"
  type        = string
  default     = "false"
}

variable "cloudsql_region" {
  description = "CloudSQL region"
  type        = string
  default     = "us-central1"
}

variable "cloudsql_type" {
  description = "CloudSQL Instance size"
  type        = string
  default     = "db-n1-standard-4"
}

variable "cloudsql_user_host" {
  description = "The host the user can connect from. Can be an IP address or IP address range. Changing this forces a new resource to be created."
  type        = string
  default     = "%"
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

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type        = string
  default     = ""
}

variable "services" {
  description = "An artificial dependency to bypass #10462"
  type        = list(string)
  default     = []
}

variable "suffix" {
  description = "The random suffix to append to all Forseti resources"
  type        = string
  default     = ""
}
