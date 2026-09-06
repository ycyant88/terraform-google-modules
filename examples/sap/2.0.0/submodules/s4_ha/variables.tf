variable "allow_stopping_for_update" {
  description = "allow_stopping_for_update"
  type        = bool
  default     = true
}

variable "ansible_sa_email" {
  description = "ansible_sa_email"
  type        = string
  default     = ""
}

variable "app_disk_export_interfaces_size" {
  description = "app_disk_export_interfaces_size"
  type        = number
  default     = 128
}

variable "app_disk_type" {
  description = "app_disk_type"
  type        = string
  default     = "pd-balanced"
}

variable "app_disk_usr_sap_size" {
  description = "app_disk_usr_sap_size"
  type        = number
  default     = 128
}

variable "app_machine_type" {
  description = "app_machine_type"
  type        = string
  default     = "n1-highem-32"
}

variable "app_sa_email" {
  description = "app_sa_email"
  type        = string
  default     = ""
}

variable "app_sid" {
  description = "app_sid"
  type        = string
  default     = "ED1"
}

variable "app_vm_names" {
  description = "app_vm_names"
  type        = list(any)
  default     = []
}

variable "app_vms_multiplier" {
  description = "Multiplies app VMs. E.g. if there is 2 VMs then with value 3 each VM will be multiplied by 3 (so there will be 6 total VMs)"
  type        = string
  default     = 1
}

variable "application_secret_name" {
  description = "application_secret_name"
  type        = string
  default     = "default"
}

variable "ascs_disk_type" {
  description = "ascs_disk_type"
  type        = string
  default     = "pd-balanced"
}

variable "ascs_disk_usr_sap_size" {
  description = "ascs_disk_usr_sap_size"
  type        = number
  default     = 128
}

variable "ascs_ilb_healthcheck_port" {
  description = "ascs_ilb_healthcheck_port"
  type        = number
  default     = 60001
}

variable "ascs_machine_type" {
  description = "ascs_machine_type"
  type        = string
  default     = "n1-standard-8"
}

variable "ascs_sa_email" {
  description = "ascs_sa_email"
  type        = string
  default     = ""
}

variable "ascs_vm_names" {
  description = "ascs_vm_names"
  type        = list(any)
  default     = []
}

variable "configuration_bucket_name" {
  description = "configuration_bucket_name"
  type        = string
  default     = ""
}

variable "create_comms_firewall" {
  description = "create_comms_firewall"
  type        = bool
  default     = true
}

variable "custom_app_metadata" {
  description = "Optional - default is empty. Custom metadata to be added to the app VMs."
  type        = map(string)
  default     = {}
}

variable "custom_ascs_metadata" {
  description = "Optional - default is empty. Custom metadata to be added to the ASCS VMs."
  type        = map(string)
  default     = {}
}

variable "custom_db_metadata" {
  description = "Optional - default is empty. Custom metadata to be added to the DB VMs."
  type        = map(string)
  default     = {}
}

variable "custom_tags" {
  description = "custom_tags"
  type        = list(any)
  default     = []
}

variable "data_stripe_size" {
  description = "data_stripe_size"
  type        = string
  default     = "256k"
}

variable "db_data_disk_type" {
  description = "db_data_disk_type"
  type        = string
  default     = "pd-balanced"
}

variable "db_disk_backup_size" {
  description = "db_disk_backup_size"
  type        = number
  default     = 128
}

variable "db_disk_hana_data_size" {
  description = "db_disk_hana_data_size"
  type        = number
  default     = 249
}

variable "db_disk_hana_log_size" {
  description = "db_disk_hana_log_size"
  type        = number
  default     = 104
}

variable "db_disk_hana_shared_size" {
  description = "db_disk_hana_shared_size"
  type        = number
  default     = 208
}

variable "db_disk_type" {
  description = "Disk type for the non log/data disks."
  type        = string
  default     = "pd-balanced"
}

variable "db_disk_usr_sap_size" {
  description = "db_disk_usr_sap_size"
  type        = number
  default     = 32
}

variable "db_ilb_healthcheck_port" {
  description = "db_ilb_healthcheck_port"
  type        = number
  default     = 60000
}

variable "db_log_disk_type" {
  description = "db_log_disk_type"
  type        = string
  default     = "pd-balanced"
}

variable "db_machine_type" {
  description = "db_machine_type"
  type        = string
  default     = "n1-highmem-32"
}

variable "db_sa_email" {
  description = "db_sa_email"
  type        = string
  default     = ""
}

variable "db_sid" {
  description = "db_sid"
  type        = string
  default     = "HD1"
}

variable "db_vm_names" {
  description = "db_vm_names"
  type        = list(any)
  default     = []
}

variable "deployment_has_dns" {
  description = "Set to false to deploy without a DNS zone"
  type        = bool
  default     = true
}

variable "deployment_name" {
  description = "deployment_name"
  type        = string
  default     = ""
}

variable "disk_size_map" {
  description = "disk_size_map"
  type        = map(number)
  default     = {}
}

variable "dns_zone_name_suffix" {
  description = "dns_zone_name_suffix"
  type        = string
  default     = "gcp.sapcloud.goog."
}

variable "ers_ilb_healthcheck_port" {
  description = "ers_ilb_healthcheck_port"
  type        = number
  default     = 60002
}

variable "existing_dns_zone_name" {
  description = "existing_dns_zone_name"
  type        = string
  default     = ""
}

variable "filestore_gb" {
  description = "filestore_gb"
  type        = number
  default     = 1024
}

variable "filestore_location" {
  description = "filestore_location"
  type        = string
  default     = ""
}

variable "filestore_tier" {
  description = "filestore_tier"
  type        = string
  default     = "ENTERPRISE"
}

variable "fstore_mount_point" {
  description = "Optional - default is empty. NFS mount point of the nfs to use. If none is provided one will be created."
  type        = string
  default     = ""
}

variable "gcp_project_id" {
  description = "gcp_project_id"
  type        = string
  default     = ""
}

variable "hana_secret_name" {
  description = "hana_secret_name"
  type        = string
  default     = "default"
}

variable "is_test" {
  description = "is_test"
  type        = string
  default     = "false"
}

variable "log_stripe_size" {
  description = "log_stripe_size"
  type        = string
  default     = "64k"
}

variable "media_bucket_name" {
  description = "media_bucket_name"
  type        = string
  default     = ""
}

variable "network_project" {
  description = "network_project"
  type        = string
  default     = ""
}

variable "number_data_disks" {
  description = "Optional - default is 1. Number of disks to use for data volume striping (if larger than 1)."
  type        = number
  default     = 1
}

variable "number_log_disks" {
  description = "Optional - default is 1. Number of disks to use for log volume striping (if larger than 1)."
  type        = number
  default     = 1
}

variable "package_location" {
  description = "package_location"
  type        = string
  default     = "gs://cloudsapdeploy/deployments/latest"
}

variable "primary_startup_url" {
  description = "primary_startup_url"
  type        = string
  default     = "gs://cloudsapdeploy/deployments/latest/startup/ansible_runner_startup.sh"
}

variable "public_ansible_runner_ip" {
  description = "public_ansible_runner_ip"
  type        = bool
  default     = true
}

variable "public_ip" {
  description = "public_ip"
  type        = bool
  default     = false
}

variable "region_name" {
  description = "region_name"
  type        = string
  default     = ""
}

variable "sap_boot_disk_image" {
  description = "sap_boot_disk_image"
  type        = string
  default     = "projects/rhel-sap-cloud/global/images/rhel-8-4-sap-v20220719"
}

variable "sap_boot_disk_image_app" {
  description = "sap_boot_disk_image_app"
  type        = string
  default     = ""
}

variable "sap_boot_disk_image_ascs" {
  description = "sap_boot_disk_image_ascs"
  type        = string
  default     = ""
}

variable "sap_boot_disk_image_db" {
  description = "sap_boot_disk_image_db"
  type        = string
  default     = ""
}

variable "sap_instance_id_app" {
  description = "sap_instance_id_app"
  type        = string
  default     = "10"
}

variable "sap_instance_id_ascs" {
  description = "sap_instance_id_ascs"
  type        = string
  default     = "11"
}

variable "sap_instance_id_db" {
  description = "sap_instance_id_db"
  type        = string
  default     = "00"
}

variable "sap_instance_id_ers" {
  description = "sap_instance_id_ers"
  type        = string
  default     = "12"
}

variable "sap_version" {
  description = "sap_version"
  type        = string
  default     = "2021"
}

variable "subnet_name" {
  description = "subnet_name"
  type        = string
  default     = "default"
}

variable "virtualize_disks" {
  description = "virtualize_disks"
  type        = bool
  default     = true
}

variable "vm_prefix" {
  description = "vm_prefix"
  type        = string
  default     = "sapha"
}

variable "vpc_name" {
  description = "vpc_name"
  type        = string
  default     = "default"
}

variable "zone1_name" {
  description = "zone1_name"
  type        = string
  default     = ""
}

variable "zone2_name" {
  description = "zone2_name"
  type        = string
  default     = ""
}
