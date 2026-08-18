variable "can_ip_forward" {
  description = "Whether sending and receiving of packets with non-matching source or destination IPs is allowed."
  type        = bool
  default     = true
}

variable "custom_metadata" {
  description = "Optional - default is empty. Custom metadata to be added to the VM."
  type        = map(string)
  default     = {}
}

variable "db2_backup_size" {
  description = "OPTIONAL - Size in GB of the /db2backup - If set to 0, no disk will be created."
  type        = number
  default     = 0
}

variable "db2_dump_size" {
  description = "Size in GB of /db2/[DBSID]/db2dump - this directory holds dump files from DB2 which may be useful for diagnosing problems."
  type        = number
  default     = 8
}

variable "db2_home_size" {
  description = "Size in GB of /db2/db2[DBSID] - the home directory of the database instance."
  type        = number
  default     = 8
}

variable "db2_log_size" {
  description = "Size in GB of /db2/[DBSID]/logdir - Which holds the database transaction logs."
  type        = number
  default     = 8
}

variable "db2_log_ssd" {
  description = "SSD toggle for the log drive. If set to true, the log disk will be SSD."
  type        = bool
  default     = true
}

variable "db2_sap_data_size" {
  description = "Size in GB of /db2/[DBSID]/sapdata - Which holds the database data files."
  type        = number
  default     = 30
}

variable "db2_sap_data_ssd" {
  description = "SSD toggle for the data drive. If set to true, the data disk will be SSD."
  type        = bool
  default     = true
}

variable "db2_sap_temp_size" {
  description = "Size in GB of /db2/[DBSID]/saptmp - Which holds the database temporary table space."
  type        = number
  default     = 8
}

variable "db2_sid" {
  description = "The database instance/SID name."
  type        = string
  default     = ""
}

variable "db2_sid_size" {
  description = "Size in GB of /db2/[DBSID] - the root directory of the database instance."
  type        = number
  default     = 8
}

variable "instance_name" {
  description = "Hostname of the GCE instance."
  type        = string
  default     = ""
}

variable "linux_image" {
  description = "Linux image name to use."
  type        = string
  default     = ""
}

variable "linux_image_project" {
  description = "The project which the Linux image belongs to."
  type        = string
  default     = ""
}

variable "machine_type" {
  description = "Machine type for the instances."
  type        = string
  default     = ""
}

variable "network_tags" {
  description = "OPTIONAL - Network tags can be associated to your instance on deployment. This can be used for firewalling or routing purposes."
  type        = list(string)
  default     = []
}

variable "post_deployment_script" {
  description = "OPTIONAL - gs:// or https:// location of a script to execute on the created VM's post deployment."
  type        = string
  default     = ""
}

variable "primary_startup_url" {
  description = "Startup script to be executed when the VM boots, should not be overridden."
  type        = string
  default     = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_db2/startup.sh | bash -x -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
}

variable "project_id" {
  description = "Project id where the instances will be created."
  type        = string
  default     = ""
}

variable "public_ip" {
  description = "OPTIONAL - Defines whether a public IP address should be added to your VM. By default this is set to Yes. Note that if you set this to No without appropriate network nat and tags in place, there will be no route to the internet and thus the installation will fail."
  type        = bool
  default     = true
}

variable "reservation_name" {
  description = "Use a reservation specified by RESERVATION_NAME.\nBy default ANY_RESERVATION is used when this variable is empty.\nIn order for a reservation to be used it must be created with the\n\"Select specific reservation\" selected (specificReservationRequired set to true)\nBe sure to create your reservation with the correct Min CPU Platform for the\nfollowing instance types:\nn1-highmem-32 : Intel Broadwell\nn1-highmem-64 : Intel Broadwell\nn1-highmem-96 : Intel Skylake\nn1-megamem-96 : Intel Skylake\nm1-megamem-96 : Intel Skylake\nAll other instance types can have automatic Min CPU Platform\"\n"
  type        = string
  default     = ""
}

variable "sap_deployment_debug" {
  description = "OPTIONAL - If this value is set to true, the deployment will generates verbose deployment logs. Only turn this setting on if a Google support engineer asks you to enable debugging."
  type        = bool
  default     = false
}

variable "sap_mnt_size" {
  description = "OPTIONAL - Only required if you plan on deploying SAP NetWeaver on the same VM as the db2 database instance. If set to 0, no disk will be created."
  type        = number
  default     = 0
}

variable "service_account" {
  description = "OPTIONAL - Ability to define a custom service account instead of using the default project service account."
  type        = string
  default     = ""
}

variable "subnetwork" {
  description = "The sub network to deploy the instance in."
  type        = string
  default     = ""
}

variable "swap_size" {
  description = "OPTIONAL - Only required if you plan on deploying SAP NetWeaver on the same VM as the db2 database instance. If set to 0, no disk will be created."
  type        = number
  default     = 0
}

variable "usr_sap_size" {
  description = "OPTIONAL - Only required if you plan on deploying SAP NetWeaver on the same VM as the db2 database instance. If set to 0, no disk will be created."
  type        = number
  default     = 0
}

variable "zone" {
  description = "Zone where the instances will be created."
  type        = string
  default     = ""
}
