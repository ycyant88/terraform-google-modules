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

module "sap_sap_hana_ha" {
  source                                = "terraform-google-modules/sap/google//modules/sap_hana_ha"
  version                               = "2.0.0"
  backup_disk_iops_override             = var.backup_disk_iops_override
  backup_disk_throughput_override       = var.backup_disk_throughput_override
  backup_disk_type                      = var.backup_disk_type
  can_ip_forward                        = var.can_ip_forward
  custom_mm_metadata                    = var.custom_mm_metadata
  custom_primary_metadata               = var.custom_primary_metadata
  custom_secondary_metadata             = var.custom_secondary_metadata
  data_disk_iops_override               = var.data_disk_iops_override
  data_disk_size_override               = var.data_disk_size_override
  data_disk_throughput_override         = var.data_disk_throughput_override
  data_disk_type_override               = var.data_disk_type_override
  data_stripe_size                      = var.data_stripe_size
  disk_type                             = var.disk_type
  enable_data_striping                  = var.enable_data_striping
  enable_fast_restart                   = var.enable_fast_restart
  enable_log_striping                   = var.enable_log_striping
  hyperdisk_balanced_iops_default       = var.hyperdisk_balanced_iops_default
  hyperdisk_balanced_throughput_default = var.hyperdisk_balanced_throughput_default
  include_backup_disk                   = var.include_backup_disk
  is_work_load_management_deployment    = var.is_work_load_management_deployment
  linux_image                           = var.linux_image
  linux_image_project                   = var.linux_image_project
  loadbalancer_name                     = var.loadbalancer_name
  log_disk_iops_override                = var.log_disk_iops_override
  log_disk_size_override                = var.log_disk_size_override
  log_disk_throughput_override          = var.log_disk_throughput_override
  log_disk_type_override                = var.log_disk_type_override
  log_stripe_size                       = var.log_stripe_size
  machine_type                          = var.machine_type
  majority_maker_instance_name          = var.majority_maker_instance_name
  majority_maker_machine_type           = var.majority_maker_machine_type
  majority_maker_startup_url            = var.majority_maker_startup_url
  majority_maker_zone                   = var.majority_maker_zone
  network                               = var.network
  network_tags                          = var.network_tags
  nic_type                              = var.nic_type
  number_data_disks                     = var.number_data_disks
  number_log_disks                      = var.number_log_disks
  post_deployment_script                = var.post_deployment_script
  primary_instance_group_name           = var.primary_instance_group_name
  primary_instance_name                 = var.primary_instance_name
  primary_reservation_name              = var.primary_reservation_name
  primary_startup_url                   = var.primary_startup_url
  primary_static_ip                     = var.primary_static_ip
  primary_worker_static_ips             = var.primary_worker_static_ips
  primary_zone                          = var.primary_zone
  project_id                            = var.project_id
  public_ip                             = var.public_ip
  sap_deployment_debug                  = var.sap_deployment_debug
  sap_hana_backup_size                  = var.sap_hana_backup_size
  sap_hana_deployment_bucket            = var.sap_hana_deployment_bucket
  sap_hana_instance_number              = var.sap_hana_instance_number
  sap_hana_sapsys_gid                   = var.sap_hana_sapsys_gid
  sap_hana_scaleout_nodes               = var.sap_hana_scaleout_nodes
  sap_hana_sid                          = var.sap_hana_sid
  sap_hana_sidadm_password              = var.sap_hana_sidadm_password
  sap_hana_sidadm_password_secret       = var.sap_hana_sidadm_password_secret
  sap_hana_sidadm_uid                   = var.sap_hana_sidadm_uid
  sap_hana_system_password              = var.sap_hana_system_password
  sap_hana_system_password_secret       = var.sap_hana_system_password_secret
  sap_vip                               = var.sap_vip
  secondary_instance_group_name         = var.secondary_instance_group_name
  secondary_instance_name               = var.secondary_instance_name
  secondary_reservation_name            = var.secondary_reservation_name
  secondary_startup_url                 = var.secondary_startup_url
  secondary_static_ip                   = var.secondary_static_ip
  secondary_worker_static_ips           = var.secondary_worker_static_ips
  secondary_zone                        = var.secondary_zone
  service_account                       = var.service_account
  shared_disk_iops_override             = var.shared_disk_iops_override
  shared_disk_size_override             = var.shared_disk_size_override
  shared_disk_throughput_override       = var.shared_disk_throughput_override
  shared_disk_type_override             = var.shared_disk_type_override
  sole_tenant_deployment                = var.sole_tenant_deployment
  sole_tenant_name_prefix               = var.sole_tenant_name_prefix
  sole_tenant_node_type                 = var.sole_tenant_node_type
  subnetwork                            = var.subnetwork
  unified_disk_iops_override            = var.unified_disk_iops_override
  unified_disk_size_override            = var.unified_disk_size_override
  unified_disk_throughput_override      = var.unified_disk_throughput_override
  use_single_shared_data_log_disk       = var.use_single_shared_data_log_disk
  usrsap_disk_iops_override             = var.usrsap_disk_iops_override
  usrsap_disk_size_override             = var.usrsap_disk_size_override
  usrsap_disk_throughput_override       = var.usrsap_disk_throughput_override
  usrsap_disk_type_override             = var.usrsap_disk_type_override
  wlm_deployment_name                   = var.wlm_deployment_name
  worker_startup_url                    = var.worker_startup_url
}
