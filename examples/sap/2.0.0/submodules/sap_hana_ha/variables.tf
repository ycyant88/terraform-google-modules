variable "backup_disk_iops_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the number of IOPS that the backup disk(s) will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "backup_disk_throughput_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the throughput in MB/s that the backup disk(s) will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "backup_disk_type" {
  description = "Optional - The default is pd-ssd, except for machines that do not support PD, in which case the default is hyperdisk-extreme. Only used if a backup disk is needed."
  type        = string
  default     = ""
}

variable "can_ip_forward" {
  description = "Whether sending and receiving of packets with non-matching source or destination IPs is allowed."
  type        = bool
  default     = true
}

variable "custom_mm_metadata" {
  description = "Optional - default is empty. Custom metadata to be added to the majority maker VM."
  type        = map(string)
  default     = {}
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

variable "data_stripe_size" {
  description = "Optional - default is 256k. Stripe size for data volume striping (if enable_data_striping = true)."
  type        = string
  default     = "256k"
}

variable "disk_type" {
  description = "Optional - The default disk type to use for disk(s) containing log and data volumes. The default is pd-ssd, except for machines that do not support PD, in which case the default is hyperdisk-extreme. Not all disk are supported on all machine types - see https://cloud.google.com/compute/docs/disks/ for details."
  type        = string
  default     = ""
}

variable "enable_data_striping" {
  description = "Optional - default is false. Enable LVM striping of data volume across multiple disks."
  type        = bool
  default     = false
}

variable "enable_fast_restart" {
  description = "Optional - The default is true. If set enables HANA Fast Restart."
  type        = bool
  default     = true
}

variable "enable_log_striping" {
  description = "Optional - default is false. Enable LVM striping of log volume across multiple disks."
  type        = bool
  default     = false
}

variable "hyperdisk_balanced_iops_default" {
  description = "Optional - default is 3000. Number of IOPS that is set for each disk of type Hyperdisk-balanced (except for boot/usrsap/shared disks)."
  type        = number
  default     = 3000
}

variable "hyperdisk_balanced_throughput_default" {
  description = "Optional - default is 750. Throughput in MB/s that is set for each disk of type Hyperdisk-balanced (except for boot/usrsap/shared disks)."
  type        = number
  default     = 750
}

variable "include_backup_disk" {
  description = "Optional - The default is true. If set creates a disk for backups."
  type        = bool
  default     = true
}

variable "is_work_load_management_deployment" {
  description = "If set the necessary tags and labels will be added to resoucres to support WLM."
  type        = bool
  default     = false
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

variable "loadbalancer_name" {
  description = "OPTIONAL - Name of the load balancer that will be created. If left blank with use_ilb_vip set to true, then will use lb-SID as default"
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

variable "log_stripe_size" {
  description = "Optional - default is 64k. Stripe size for log volume striping (if enable_log_striping = true)."
  type        = string
  default     = "64k"
}

variable "machine_type" {
  description = "Machine type for the instances."
  type        = string
  default     = ""
}

variable "majority_maker_instance_name" {
  description = "Optional - Name to use for the Majority Maker instance. Must be provided if scaleout_nodes > 0."
  type        = string
  default     = ""
}

variable "majority_maker_machine_type" {
  description = "Optional - The machine type to use for the Majority Maker instance. Must be provided if scaleout_nodes > 0."
  type        = string
  default     = ""
}

variable "majority_maker_startup_url" {
  description = "DO NOT USE"
  type        = string
  default     = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_ha/hana_ha_startup_majority_maker.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
}

variable "majority_maker_zone" {
  description = "Optional - The zone in which the Majority Maker instance will be deployed. Must be provided if scaleout_nodes > 0. It is recommended for this to be different from the zones the primary and secondary instance are deployed in."
  type        = string
  default     = ""
}

variable "network" {
  description = "Network in which the ILB resides including resources like firewall rules."
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

variable "number_data_disks" {
  description = "Optional - default is 2. Number of disks to use for data volume striping (if enable_data_striping = true)."
  type        = number
  default     = 2
}

variable "number_log_disks" {
  description = "Optional - default is 2. Number of disks to use for log volume striping (if enable_log_striping = true)."
  type        = number
  default     = 2
}

variable "post_deployment_script" {
  description = "OPTIONAL - gs:// or https:// location of a script to execute on the created VM's post deployment."
  type        = string
  default     = ""
}

variable "primary_instance_group_name" {
  description = "OPTIONAL - Unmanaged instance group to be created for the primary node. If blank, will use ig-VM_NAME"
  type        = string
  default     = ""
}

variable "primary_instance_name" {
  description = "Hostname of the primary GCE instance."
  type        = string
  default     = ""
}

variable "primary_reservation_name" {
  description = "Use a reservation specified by RESERVATION_NAME.\nBy default ANY_RESERVATION is used when this variable is empty.\nIn order for a reservation to be used it must be created with the\n\"Select specific reservation\" selected (specificReservationRequired set to true)\nBe sure to create your reservation with the correct Min CPU Platform for the\nfollowing instance types:\nn1-highmem-32 : Intel Broadwell\nn1-highmem-64 : Intel Broadwell\nn1-highmem-96 : Intel Skylake\nn1-megamem-96 : Intel Skylake\nm1-megamem-96 : Intel Skylake\nAll other instance types can have automatic Min CPU Platform\"\n"
  type        = string
  default     = ""
}

variable "primary_startup_url" {
  description = "Startup script to be executed when the VM boots, should not be overridden."
  type        = string
  default     = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_ha/hana_ha_startup.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
}

variable "primary_static_ip" {
  description = "Optional - Defines an internal static IP for the primary VM."
  type        = string
  default     = ""
}

variable "primary_worker_static_ips" {
  description = "Optional - Defines internal static IP addresses for the primary worker nodes."
  type        = list(string)
  default     = []
}

variable "primary_zone" {
  description = "Zone where the primary instances will be created."
  type        = string
  default     = ""
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

variable "sap_hana_scaleout_nodes" {
  description = "Optional - Specify to add scaleout nodes to both HA instances."
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

variable "sap_vip" {
  description = "OPTIONAL - The virtual IP address of the alias/route pointing towards the active SAP HANA instance. For a route based solution this IP must sit outside of any defined networks."
  type        = string
  default     = ""
}

variable "secondary_instance_group_name" {
  description = "OPTIONAL - Unmanaged instance group to be created for the secondary node. If blank, will use ig-VM_NAME"
  type        = string
  default     = ""
}

variable "secondary_instance_name" {
  description = "Hostname of the secondary GCE instance."
  type        = string
  default     = ""
}

variable "secondary_reservation_name" {
  description = "Use a reservation specified by RESERVATION_NAME.\nBy default ANY_RESERVATION is used when this variable is empty.\nIn order for a reservation to be used it must be created with the\n\"Select specific reservation\" selected (specificReservationRequired set to true)\nBe sure to create your reservation with the correct Min CPU Platform for the\nfollowing instance types:\nn1-highmem-32 : Intel Broadwell\nn1-highmem-64 : Intel Broadwell\nn1-highmem-96 : Intel Skylake\nn1-megamem-96 : Intel Skylake\nm1-megamem-96 : Intel Skylake\nAll other instance types can have automatic Min CPU Platform\"\n"
  type        = string
  default     = ""
}

variable "secondary_startup_url" {
  description = "DO NOT USE"
  type        = string
  default     = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_ha/hana_ha_startup_secondary.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
}

variable "secondary_static_ip" {
  description = "Optional - Defines an internal static IP for the secondary VM."
  type        = string
  default     = ""
}

variable "secondary_worker_static_ips" {
  description = "Optional - Defines internal static IP addresses for the secondary worker nodes."
  type        = list(string)
  default     = []
}

variable "secondary_zone" {
  description = "Zone where the secondary instances will be created."
  type        = string
  default     = ""
}

variable "service_account" {
  description = "OPTIONAL - Ability to define a custom service account instead of using the default project service account."
  type        = string
  default     = ""
}

variable "shared_disk_iops_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the number of IOPS that the shared disk will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "shared_disk_size_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Overrides the default size for the shared disk, that is based off of the machine_type."
  type        = number
  default     = null
}

variable "shared_disk_throughput_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the throughput in MB/s that the shared disk will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "shared_disk_type_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Override the 'default_disk_type' for the shared disk."
  type        = string
  default     = ""
}

variable "sole_tenant_deployment" {
  description = "Optional - default is false. Deploy on Sole Tenant Nodes."
  type        = bool
  default     = false
}

variable "sole_tenant_name_prefix" {
  description = "Optional - name of the prefix to use for the Sole Tenant objects (Node Templates, Node Groups). If left blank with sole_tenant_deployment=true, st-<sap_hana_sid> will be used."
  type        = string
  default     = ""
}

variable "sole_tenant_node_type" {
  description = "Optional - default is null. Sole Tenant Node Type to use. See https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_types"
  type        = string
  default     = null
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
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Overrides the default size for the primary disk(s), that is based off of the machine_type."
  type        = number
  default     = null
}

variable "unified_disk_throughput_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the throughput in MB/s that the primary's unified disk will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "use_single_shared_data_log_disk" {
  description = "Optional - By default three separate disk for data, logs, and shared will be made. If set to true, one disk will be used instead."
  type        = bool
  default     = false
}

variable "usrsap_disk_iops_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the number of IOPS that the /usr/sap disk(s) will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "usrsap_disk_size_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Overrides the default size for the /usr/sap disk(s), that is based off of the machine_type."
  type        = number
  default     = null
}

variable "usrsap_disk_throughput_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Directly sets the throughput in MB/s that the /usr/sap disk(s) will use. Has no effect if not using a disk type that supports it."
  type        = number
  default     = null
}

variable "usrsap_disk_type_override" {
  description = "Warning, do not use unless instructed or aware of the implications of using this setting. Override the 'default_disk_type' for the /usr/sap disk."
  type        = string
  default     = ""
}

variable "wlm_deployment_name" {
  description = "Deployment name to be used for integrating into Work Load Management."
  type        = string
  default     = ""
}

variable "worker_startup_url" {
  description = "Startup script to be executed when the worker VM boots, should not be overridden."
  type        = string
  default     = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_ha/hana_ha_startup_worker.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
}
