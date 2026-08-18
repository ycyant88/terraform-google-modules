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

module "sap_sap_hana" {
  source                                  = "terraform-google-modules/sap/google//modules/sap_hana"
  version                                 = "2.0.0"
  backup_disk_iops_override               = var.backup_disk_iops_override
  backup_disk_throughput_override         = var.backup_disk_throughput_override
  backup_disk_type                        = var.backup_disk_type
  can_ip_forward                          = var.can_ip_forward
  custom_primary_metadata                 = var.custom_primary_metadata
  custom_secondary_metadata               = var.custom_secondary_metadata
  data_disk_iops_override                 = var.data_disk_iops_override
  data_disk_size_override                 = var.data_disk_size_override
  data_disk_throughput_override           = var.data_disk_throughput_override
  data_disk_type_override                 = var.data_disk_type_override
  data_stripe_size                        = var.data_stripe_size
  disk_type                               = var.disk_type
  enable_data_striping                    = var.enable_data_striping
  enable_fast_restart                     = var.enable_fast_restart
  enable_log_striping                     = var.enable_log_striping
  hyperdisk_balanced_iops_default         = var.hyperdisk_balanced_iops_default
  hyperdisk_balanced_throughput_default   = var.hyperdisk_balanced_throughput_default
  include_backup_disk                     = var.include_backup_disk
  instance_name                           = var.instance_name
  linux_image                             = var.linux_image
  linux_image_project                     = var.linux_image_project
  log_disk_iops_override                  = var.log_disk_iops_override
  log_disk_size_override                  = var.log_disk_size_override
  log_disk_throughput_override            = var.log_disk_throughput_override
  log_disk_type_override                  = var.log_disk_type_override
  log_stripe_size                         = var.log_stripe_size
  machine_type                            = var.machine_type
  network_tags                            = var.network_tags
  nic_type                                = var.nic_type
  number_data_disks                       = var.number_data_disks
  number_log_disks                        = var.number_log_disks
  post_deployment_script                  = var.post_deployment_script
  primary_startup_url                     = var.primary_startup_url
  project_id                              = var.project_id
  public_ip                               = var.public_ip
  reservation_name                        = var.reservation_name
  sap_deployment_debug                    = var.sap_deployment_debug
  sap_hana_backup_nfs                     = var.sap_hana_backup_nfs
  sap_hana_backup_nfs_resource            = var.sap_hana_backup_nfs_resource
  sap_hana_backup_size                    = var.sap_hana_backup_size
  sap_hana_deployment_bucket              = var.sap_hana_deployment_bucket
  sap_hana_instance_number                = var.sap_hana_instance_number
  sap_hana_sapsys_gid                     = var.sap_hana_sapsys_gid
  sap_hana_scaleout_nodes                 = var.sap_hana_scaleout_nodes
  sap_hana_shared_nfs                     = var.sap_hana_shared_nfs
  sap_hana_shared_nfs_resource            = var.sap_hana_shared_nfs_resource
  sap_hana_sid                            = var.sap_hana_sid
  sap_hana_sidadm_password                = var.sap_hana_sidadm_password
  sap_hana_sidadm_password_secret         = var.sap_hana_sidadm_password_secret
  sap_hana_sidadm_uid                     = var.sap_hana_sidadm_uid
  sap_hana_system_password                = var.sap_hana_system_password
  sap_hana_system_password_secret         = var.sap_hana_system_password_secret
  secondary_startup_url                   = var.secondary_startup_url
  service_account                         = var.service_account
  shared_disk_iops_override               = var.shared_disk_iops_override
  shared_disk_size_override               = var.shared_disk_size_override
  shared_disk_throughput_override         = var.shared_disk_throughput_override
  shared_disk_type_override               = var.shared_disk_type_override
  sole_tenant_deployment                  = var.sole_tenant_deployment
  sole_tenant_name_prefix                 = var.sole_tenant_name_prefix
  sole_tenant_node_type                   = var.sole_tenant_node_type
  subnetwork                              = var.subnetwork
  unified_disk_iops_override              = var.unified_disk_iops_override
  unified_disk_size_override              = var.unified_disk_size_override
  unified_disk_throughput_override        = var.unified_disk_throughput_override
  unified_worker_disk_iops_override       = var.unified_worker_disk_iops_override
  unified_worker_disk_size_override       = var.unified_worker_disk_size_override
  unified_worker_disk_throughput_override = var.unified_worker_disk_throughput_override
  use_single_shared_data_log_disk         = var.use_single_shared_data_log_disk
  usrsap_disk_iops_override               = var.usrsap_disk_iops_override
  usrsap_disk_size_override               = var.usrsap_disk_size_override
  usrsap_disk_throughput_override         = var.usrsap_disk_throughput_override
  usrsap_disk_type_override               = var.usrsap_disk_type_override
  vm_static_ip                            = var.vm_static_ip
  worker_static_ips                       = var.worker_static_ips
  zone                                    = var.zone
}
