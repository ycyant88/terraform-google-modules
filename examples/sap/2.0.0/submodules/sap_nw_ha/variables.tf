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
  description = "Optional - default is empty. Custom metadata to be added to the secondary VM."
  type        = map(string)
  default     = {}
}

variable "ers_backend_svc_name" {
  description = "Name of ERS backend service"
  type        = string
  default     = ""
}

variable "ers_forw_rule_name" {
  description = "Name of ERS forwarding rule"
  type        = string
  default     = ""
}

variable "ers_hc_name" {
  description = "Name of ERS health check"
  type        = string
  default     = ""
}

variable "ers_hc_port" {
  description = "Port of ERS health check"
  type        = string
  default     = ""
}

variable "ers_inst_group_name" {
  description = "Name of ERS instance group"
  type        = string
  default     = ""
}

variable "ers_vip_address" {
  description = "Address of ERS virtual IP"
  type        = string
  default     = ""
}

variable "ers_vip_name" {
  description = "Name of ERS virtual IP"
  type        = string
  default     = ""
}

variable "hc_firewall_rule_name" {
  description = "Name of firewall rule for the health check"
  type        = string
  default     = ""
}

variable "hc_network_tag" {
  description = "Network tag for the health check firewall rule"
  type        = list(string)
  default     = []
}

variable "linux_image" {
  description = "Linux image name"
  type        = string
  default     = ""
}

variable "linux_image_project" {
  description = "Linux image project"
  type        = string
  default     = ""
}

variable "machine_type" {
  description = "Machine type for the instances"
  type        = string
  default     = ""
}

variable "network" {
  description = "Network for the instances"
  type        = string
  default     = ""
}

variable "network_tags" {
  description = "Network tags to apply to the instances"
  type        = list(string)
  default     = []
}

variable "nfs_path" {
  description = "NFS path for shared file system, e.g. 10.163.58.114:/ssd"
  type        = string
  default     = ""
}

variable "pacemaker_cluster_name" {
  description = "Name of Pacemaker cluster."
  type        = string
  default     = ""
}

variable "post_deployment_script" {
  description = "Specifies the location of a script to run after the deployment is complete.\nThe script should be hosted on a web server or in a GCS bucket. The URL should\nbegin with http:// https:// or gs://. Note that this script will be executed\non all VM's that the template creates. If you only want to run it on the master\ninstance you will need to add a check at the top of your script.\n"
  type        = string
  default     = ""
}

variable "primary_reservation_name" {
  description = "Use a reservation specified by RESERVATION_NAME.\nBy default ANY_RESERVATION is used when this variable is empty.\nIn order for a reservation to be used it must be created with the\n\"Select specific reservation\" selected (specificReservationRequired set to true)\nBe sure to create your reservation with the correct Min CPU Platform for the\nfollowing instance types:\nn1-highmem-32 : Intel Broadwell\nn1-highmem-64 : Intel Broadwell\nn1-highmem-96 : Intel Skylake\nn1-megamem-96 : Intel Skylake\nm1-megamem-96 : \"Intel Skylake\"\nAll other instance types can have automatic Min CPU Platform\"\n"
  type        = string
  default     = ""
}

variable "primary_startup_url" {
  description = "DO NOT USE"
  type        = string
  default     = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_nw_ha/nw_ha_startup_scs.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
}

variable "project_id" {
  description = "Project id where the instances will be created"
  type        = string
  default     = ""
}

variable "public_ip" {
  description = "Create an ephemeral public ip for the instances"
  type        = bool
  default     = false
}

variable "sap_deployment_debug" {
  description = "Debug log level for deployment"
  type        = bool
  default     = false
}

variable "sap_ers_instance_number" {
  description = "ERS instance number"
  type        = string
  default     = "10"
}

variable "sap_nw_abap" {
  description = "Is this a Netweaver ABAP installation. Set 'false' for NW Java. Dual stack is not supported by this script."
  type        = bool
  default     = true
}

variable "sap_primary_instance" {
  description = "Name of first instance (initial SCS location)"
  type        = string
  default     = ""
}

variable "sap_primary_zone" {
  description = "Zone where the first instance will be created"
  type        = string
  default     = ""
}

variable "sap_scs_instance_number" {
  description = "SCS instance number"
  type        = string
  default     = "00"
}

variable "sap_secondary_instance" {
  description = "Name of second instance (initial ERS location)"
  type        = string
  default     = ""
}

variable "sap_secondary_zone" {
  description = "Zone where the second instance will be created"
  type        = string
  default     = ""
}

variable "sap_sid" {
  description = "SAP System ID"
  type        = string
  default     = ""
}

variable "scs_backend_svc_name" {
  description = "Name of SCS backend service"
  type        = string
  default     = ""
}

variable "scs_forw_rule_name" {
  description = "Name of SCS forwarding rule"
  type        = string
  default     = ""
}

variable "scs_hc_name" {
  description = "Name of SCS health check"
  type        = string
  default     = ""
}

variable "scs_hc_port" {
  description = "Port of SCS health check"
  type        = string
  default     = ""
}

variable "scs_inst_group_name" {
  description = "Name of SCS instance group"
  type        = string
  default     = ""
}

variable "scs_vip_address" {
  description = "Address of SCS virtual IP"
  type        = string
  default     = ""
}

variable "scs_vip_name" {
  description = "Name of SCS virtual IP"
  type        = string
  default     = ""
}

variable "secondary_reservation_name" {
  description = "Use a reservation specified by RESERVATION_NAME.\nBy default ANY_RESERVATION is used when this variable is empty.\nIn order for a reservation to be used it must be created with the\n\"Select specific reservation\" selected (specificReservationRequired set to true)\nBe sure to create your reservation with the correct Min CPU Platform for the\nfollowing instance types:\nn1-highmem-32 : Intel Broadwell\nn1-highmem-64 : Intel Broadwell\nn1-highmem-96 : Intel Skylake\nn1-megamem-96 : Intel Skylake\nm1-megamem-96 : \"Intel Skylake\"\nAll other instance types can have automatic Min CPU Platform\"\n"
  type        = string
  default     = ""
}

variable "secondary_startup_url" {
  description = "DO NOT USE"
  type        = string
  default     = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_nw_ha/nw_ha_startup_ers.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
}

variable "service_account" {
  description = "Service account that will be used as the service account on the created instance.\nLeave this blank to use the project default service account\n"
  type        = string
  default     = ""
}

variable "subnetwork" {
  description = "Subnetwork for the instances"
  type        = string
  default     = ""
}

variable "swap_size" {
  description = "Size in GB of swap volume"
  type        = number
  default     = 8
}

variable "usr_sap_size" {
  description = "Size of /usr/sap in GB"
  type        = number
  default     = 8
}
