variable "can_ip_forward" {
  description = "Whether sending and receiving of packets with non-matching source or destination IPs is allowed."
  type        = bool
  default     = true
}

variable "custom_primary_metadata" {
  description = "Optional - default is empty. Custom metadata to be added to the primary VM."
  type        = map(string)
  default     = {}
}

variable "custom_secondary_metadata" {
  description = "Optional - default is empty. Custom metadata to be added to the secondary VMs."
  type        = map(string)
  default     = {}
}

variable "custom_standby_metadata" {
  description = "Optional - default is empty. Custom metadata to be added to the standby VMs."
  type        = map(string)
  default     = {}
}

variable "data_disk_iops_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the number of IOPS that the data disk(s) will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "data_disk_size_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Overrides the default size for the data disk(s), that is based off of the machine_type."
  type        = number
  default     = null
}

variable "data_disk_throughput_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the throughput in MB/s that the data disk(s) will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "data_disk_type_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Override the 'default_disk_type' for the data disk."
  type        = string
  default     = ""
}

variable "disk_type" {
  description = "Optional - The default disk type to use on all disks deployed. The default is pd-ssd, except for machines that do not support PD, in which case the default is hyperdisk-extreme. Not all disk are supported on all machine types - see https://cloud.google.com/compute/docs/disks/ for details."
  type        = string
  default     = ""
}

variable "hyperdisk_balanced_iops_default" {
  description = "Optional - default is 3000. Number of IOPS that is set for each disk of type Hyperdisk-balanced (except for boot disk)."
  type        = number
  default     = 3000
}

variable "hyperdisk_balanced_throughput_default" {
  description = "Optional - default is 750. Throughput in MB/s that is set for each disk of type Hyperdisk-balanced (except for boot disk)."
  type        = number
  default     = 750
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

variable "log_disk_iops_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the number of IOPS that the log disk(s) will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "log_disk_size_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Overrides the default size for the log disk(s), that is based off of the machine_type."
  type        = number
  default     = null
}

variable "log_disk_throughput_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the throughput in MB/s that the log disk(s) will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "log_disk_type_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Override the 'default_disk_type' for the log disk."
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

variable "nic_type" {
  description = "Optional - This value determines the type of NIC to use, valid options are GVNIC and VIRTIO_NET. If choosing GVNIC make sure that it is supported by your OS choice here https://cloud.google.com/compute/docs/images/os-details#networking."
  type        = string
  default     = ""
}

variable "post_deployment_script" {
  description = "OPTIONAL - gs:// or https:// location of a script to execute on the created VM's post deployment."
  type        = string
  default     = ""
}

variable "primary_startup_url" {
  description = "Startup script to be executed when the VM boots, should not be overridden."
  type        = string
  default     = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_scaleout/hana_scaleout_startup.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
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

variable "sap_hana_backup_nfs" {
  description = "Google Filestore share for /hanabackup"
  type        = string
  default     = ""
}

variable "sap_hana_deployment_bucket" {
  description = "The Cloud Storage path that contains the SAP HANA media, do not include gs://. If this is not defined, the GCE instance will be provisioned without SAP HANA installed."
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

variable "sap_hana_shared_nfs" {
  description = "Google Filestore share for /hana/shared"
  type        = string
  default     = ""
}

variable "sap_hana_sid" {
  description = "The SAP HANA SID. SID must adhere to SAP standard (Three letters or numbers and start with a letter)"
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

variable "sap_hana_standby_nodes" {
  description = "Number of standby nodes to create."
  type        = number
  default     = 1
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

variable "sap_hana_worker_nodes" {
  description = "Number of worker nodes to create.\nThis is in addition to the primary node.\n"
  type        = number
  default     = 1
}

variable "secondary_startup_url" {
  description = "DO NOT USE"
  type        = string
  default     = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_scaleout/hana_scaleout_startup_secondary.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
}

variable "service_account" {
  description = "OPTIONAL - Ability to define a custom service account instead of using the default project service account."
  type        = string
  default     = ""
}

variable "standby_static_ips" {
  description = "Optional - Defines internal static IP addresses for the standby nodes."
  type        = list(string)
  default     = []
}

variable "subnetwork" {
  description = "The sub network to deploy the instance in."
  type        = string
  default     = ""
}

variable "unified_disk_iops_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the number of IOPS that the primary's unified disk will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "unified_disk_size_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Overrides the default size for the primary's unified disk, that is based off of the machine_type."
  type        = number
  default     = null
}

variable "unified_disk_throughput_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the throughput in MB/s that the primary's unified disk will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "use_single_data_log_disk" {
  description = "Optional - By default two separate disk for data and logs will be made. If set to true, one disk will be used instead."
  type        = bool
  default     = false
}

variable "vm_static_ip" {
  description = "Optional - Defines an internal static IP for the VM."
  type        = string
  default     = ""
}

variable "worker_static_ips" {
  description = "Optional - Defines internal static IP addresses for the worker nodes."
  type        = list(string)
  default     = []
}

variable "zone" {
  description = "Zone where the instances will be created."
  type        = string
  default     = ""
}
