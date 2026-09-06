variable "can_ip_forward" {
  description = "Whether sending and receiving of packets with non-matching source or destination IPs is allowed."
  type        = bool
  default     = true
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
  default     = "curl -s BUILD.TERRA_SH_URL/sap_hana/startup.sh | bash -s BUILD.TERRA_SH_URL"
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

variable "sap_hana_backup_size" {
  description = "Size in GB of the /hanabackup volume. If this is not set or set to zero, the GCE instance will be provisioned with a hana backup volume of 2 times the total memory."
  type        = number
  default     = 0
}

variable "sap_hana_deployment_bucket" {
  description = "The GCS bucket containing the SAP HANA media. If this is not defined, the GCE instance will be provisioned without SAP HANA installed."
  type        = string
  default     = ""
}

variable "sap_hana_instance_number" {
  description = "The SAP instance number. If this is not defined, the GCE instance will be provisioned without SAP HANA installed."
  type        = number
  default     = 0
}

variable "sap_hana_sapsys_gid" {
  description = "The Linux GID of the SAPSYS group. By default this is set to 79"
  type        = number
  default     = 79
}

variable "sap_hana_scaleout_nodes" {
  description = "Number of additional nodes to add. E.g - if you wish for a 4 node cluster you would specify 3 here."
  type        = number
  default     = 0
}

variable "sap_hana_sid" {
  description = "The SAP HANA SID. If this is not defined, the GCE instance will be provisioned without SAP HANA installed. SID must adhere to SAP standard (Three letters or numbers and start with a letter)"
  type        = string
  default     = ""
}

variable "sap_hana_sidadm_password" {
  description = "The linux sidadm login password. If this is not defined, the GCE instance will be provisioned without SAP HANA installed. Minimum requirement is 8 characters."
  type        = string
  default     = ""
}

variable "sap_hana_sidadm_password_secret" {
  description = "The secret key used to retrieve the linux sidadm login from Secret Manager (https://cloud.google.com/secret-manager). The Secret Manager password will overwrite the clear text password from sap_hana_sidadm_password if both are set."
  type        = string
  default     = ""
}

variable "sap_hana_sidadm_uid" {
  description = "The Linux UID of the <SID>adm user. By default this is set to 900 to avoid conflicting with other OS users."
  type        = number
  default     = 900
}

variable "sap_hana_system_password" {
  description = "The SAP HANA SYSTEM password. If this is not defined, the GCE instance will be provisioned without SAP HANA installed. Minimum requirement is 8 characters with at least 1 number."
  type        = string
  default     = ""
}

variable "sap_hana_system_password_secret" {
  description = "The secret key used to retrieve the SAP HANA SYSTEM login from Secret Manager (https://cloud.google.com/secret-manager). The Secret Manager password will overwrite the clear text password from sap_hana_system_password if both are set."
  type        = string
  default     = ""
}

variable "secondary_startup_url" {
  description = "DO NOT USE"
  type        = string
  default     = "curl -s BUILD.TERRA_SH_URL/sap_hana/startup_secondary.sh | bash -s BUILD.TERRA_SH_URL"
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

variable "zone" {
  description = "Zone where the instances will be created."
  type        = string
  default     = ""
}
