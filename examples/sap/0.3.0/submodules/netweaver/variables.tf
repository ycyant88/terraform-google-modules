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

variable "device_0" {
  description = "Device name"
  type        = string
  default     = "boot"
}

variable "device_1" {
  description = "Device name"
  type        = string
  default     = "usrsap"
}

variable "device_2" {
  description = "Device name"
  type        = string
  default     = "sapmnt"
}

variable "device_3" {
  description = "Device name"
  type        = string
  default     = "swap"
}

variable "disk_type" {
  description = "The GCE data disk type. May be set to pd-standard (for PD HDD) or pd-ssd."
  type        = string
  default     = ""
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

variable "pd_kms_key" {
  description = "Customer managed encryption key to use in persistent disks. If none provided, a Google managed key will be used."
  type        = string
  default     = ""
}

variable "post_deployment_script" {
  description = "Netweaver post deployment script. Must be a gs:// or https:// link to the script."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project in which the resources will be deployed."
  type        = string
  default     = ""
}

variable "public_ip" {
  description = "Determines whether a public IP address is added to your VM instance."
  type        = string
  default     = 1
}

variable "region" {
  description = "Region to deploy the resources. Should be in the same region as the zone."
  type        = string
  default     = ""
}

variable "sap_deployment_debug" {
  description = "Debug flag for Netweaver deployment."
  type        = string
  default     = "false"
}

variable "sap_mnt_size" {
  description = "SAP mount size"
  type        = string
  default     = ""
}

variable "service_account_email" {
  description = "Email of service account to attach to the instance."
  type        = string
  default     = ""
}

variable "startup_script" {
  description = "This will reference the startup.sh script files in the files folder for netweaver set up in the instance"
  type        = string
  default     = ""
}

variable "subnetwork" {
  description = "The name or self_link of the subnetwork where the isntance will be deployed. The subnetwork must exist in the same region this instance will be created in."
  type        = string
  default     = ""
}

variable "swap_size" {
  description = "SWAP Size"
  type        = string
  default     = ""
}

variable "usr_sap_size" {
  description = "USR SAP size"
  type        = string
  default     = ""
}

variable "zone" {
  description = "The zone that the instance should be created in."
  type        = string
  default     = ""
}
