variable "address_name" {
  description = "Name of static IP adress to add to the instance's access config."
  type        = string
  default     = ""
}

variable "autodelete_disk" {
  description = "Whether the disk will be auto-deleted when the instance is deleted."
  type        = string
  default     = "false"
}

variable "boot_disk_size" {
  description = "Root disk size in GB."
  type        = string
  default     = ""
}

variable "boot_disk_type" {
  description = "The GCE boot disk type. May be set to pd-standard (for PD HDD) or pd-ssd."
  type        = string
  default     = ""
}

variable "device_name_pd_hdd" {
  description = "device name for standard persistant disk"
  type        = string
  default     = "backup"
}

variable "device_name_pd_ssd" {
  description = "device name for ssd persistant disk"
  type        = string
  default     = "pdssd"
}

variable "disk_name_0" {
  description = "Name of first disk."
  type        = string
  default     = "sap-hana-pd-sd-0"
}

variable "disk_name_1" {
  description = "Name of second disk."
  type        = string
  default     = "sap-hana-pd-sd-1"
}

variable "disk_type_0" {
  description = "The GCE data disk type. May be set to pd-ssd."
  type        = string
  default     = "pd-ssd"
}

variable "disk_type_1" {
  description = "The GCE data disk type. May be set to pd-standard (for PD HDD)."
  type        = string
  default     = "pd-standard"
}

variable "instance_name" {
  description = "A unique name for the resource, required by GCE. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The GCE instance/machine type."
  type        = string
  default     = ""
}

variable "linux_image_family" {
  description = "GCE image family."
  type        = string
  default     = ""
}

variable "linux_image_project" {
  description = "Project name containing the linux image."
  type        = string
  default     = ""
}

variable "network_tags" {
  description = "List of network tags to attach to the instance."
  type        = list(any)
  default     = []
}

variable "pd_hdd_size" {
  description = "Persistent disk size in GB."
  type        = string
  default     = ""
}

variable "pd_kms_key" {
  description = "Customer managed encryption key to use in persistent disks. If none provided, a Google managed key will be used.."
  type        = string
  default     = ""
}

variable "pd_ssd_size" {
  description = "Persistent disk size in GB."
  type        = string
  default     = ""
}

variable "post_deployment_script" {
  description = "SAP HANA post deployment script. Must be a gs:// or https:// link to the script."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project in which the resources will be deployed."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region to deploy the resources. Should be in the same region as the zone."
  type        = string
  default     = ""
}

variable "sap_deployment_debug" {
  description = "Debug flag for SAP HANA deployment."
  type        = string
  default     = "false"
}

variable "sap_hana_deployment_bucket" {
  description = "SAP hana deployment bucket."
  type        = string
  default     = ""
}

variable "sap_hana_instance_number" {
  description = "SAP HANA instance number"
  type        = string
  default     = ""
}

variable "sap_hana_sapsys_gid" {
  description = "SAP HANA SAP System GID"
  type        = string
  default     = ""
}

variable "sap_hana_sid" {
  description = "SAP HANA System Identifier. When using the SID to enter a user session, like this for example, su - [SID]adm, make sure that [SID] is in lower case."
  type        = string
  default     = ""
}

variable "sap_hana_sidadm_password" {
  description = "SAP HANA System Identifier Admin password"
  type        = string
  default     = ""
}

variable "sap_hana_sidadm_uid" {
  description = "SAP HANA System Identifier Admin UID"
  type        = string
  default     = ""
}

variable "sap_hana_system_password" {
  description = "SAP HANA system password"
  type        = string
  default     = ""
}

variable "service_account_email" {
  description = "Email of service account to attach to the instance."
  type        = string
  default     = ""
}

variable "startup_script" {
  description = "Startup script to install SAP HANA."
  type        = string
  default     = ""
}

variable "subnetwork" {
  description = "The name or self_link of the subnetwork where the isntance will be deployed. The subnetwork must exist in the same region this instance will be created in."
  type        = string
  default     = ""
}

variable "zone" {
  description = "The zone that the instance should be created in."
  type        = string
  default     = ""
}
