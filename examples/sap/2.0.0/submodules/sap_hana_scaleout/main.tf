terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

module "sap_sap_hana_scaleout" {
  source                                = "terraform-google-modules/sap/google//modules/sap_hana_scaleout"
  version                               = "2.0.0"
  can_ip_forward                        = var.can_ip_forward
  custom_primary_metadata               = var.custom_primary_metadata
  custom_secondary_metadata             = var.custom_secondary_metadata
  custom_standby_metadata               = var.custom_standby_metadata
  data_disk_iops_override               = var.data_disk_iops_override
  data_disk_size_override               = var.data_disk_size_override
  data_disk_throughput_override         = var.data_disk_throughput_override
  data_disk_type_override               = var.data_disk_type_override
  disk_type                             = var.disk_type
  hyperdisk_balanced_iops_default       = var.hyperdisk_balanced_iops_default
  hyperdisk_balanced_throughput_default = var.hyperdisk_balanced_throughput_default
  instance_name                         = var.instance_name
  linux_image                           = var.linux_image
  linux_image_project                   = var.linux_image_project
  log_disk_iops_override                = var.log_disk_iops_override
  log_disk_size_override                = var.log_disk_size_override
  log_disk_throughput_override          = var.log_disk_throughput_override
  log_disk_type_override                = var.log_disk_type_override
  machine_type                          = var.machine_type
  network_tags                          = var.network_tags
  nic_type                              = var.nic_type
  post_deployment_script                = var.post_deployment_script
  primary_startup_url                   = var.primary_startup_url
  project_id                            = var.project_id
  public_ip                             = var.public_ip
  reservation_name                      = var.reservation_name
  sap_deployment_debug                  = var.sap_deployment_debug
  sap_hana_backup_nfs                   = var.sap_hana_backup_nfs
  sap_hana_deployment_bucket            = var.sap_hana_deployment_bucket
  sap_hana_instance_number              = var.sap_hana_instance_number
  sap_hana_sapsys_gid                   = var.sap_hana_sapsys_gid
  sap_hana_shared_nfs                   = var.sap_hana_shared_nfs
  sap_hana_sid                          = var.sap_hana_sid
  sap_hana_sidadm_password              = var.sap_hana_sidadm_password
  sap_hana_sidadm_password_secret       = var.sap_hana_sidadm_password_secret
  sap_hana_sidadm_uid                   = var.sap_hana_sidadm_uid
  sap_hana_standby_nodes                = var.sap_hana_standby_nodes
  sap_hana_system_password              = var.sap_hana_system_password
  sap_hana_system_password_secret       = var.sap_hana_system_password_secret
  sap_hana_worker_nodes                 = var.sap_hana_worker_nodes
  secondary_startup_url                 = var.secondary_startup_url
  service_account                       = var.service_account
  standby_static_ips                    = var.standby_static_ips
  subnetwork                            = var.subnetwork
  unified_disk_iops_override            = var.unified_disk_iops_override
  unified_disk_size_override            = var.unified_disk_size_override
  unified_disk_throughput_override      = var.unified_disk_throughput_override
  use_single_data_log_disk              = var.use_single_data_log_disk
  vm_static_ip                          = var.vm_static_ip
  worker_static_ips                     = var.worker_static_ips
  zone                                  = var.zone
}
