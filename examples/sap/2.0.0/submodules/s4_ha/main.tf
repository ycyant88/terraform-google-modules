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

module "sap_s4_ha" {
  source                          = "terraform-google-modules/sap/google//modules/s4_ha"
  version                         = "2.0.0"
  allow_stopping_for_update       = var.allow_stopping_for_update
  ansible_sa_email                = var.ansible_sa_email
  app_disk_export_interfaces_size = var.app_disk_export_interfaces_size
  app_disk_type                   = var.app_disk_type
  app_disk_usr_sap_size           = var.app_disk_usr_sap_size
  app_machine_type                = var.app_machine_type
  app_sa_email                    = var.app_sa_email
  app_sid                         = var.app_sid
  app_vm_names                    = var.app_vm_names
  app_vms_multiplier              = var.app_vms_multiplier
  application_secret_name         = var.application_secret_name
  ascs_disk_type                  = var.ascs_disk_type
  ascs_disk_usr_sap_size          = var.ascs_disk_usr_sap_size
  ascs_ilb_healthcheck_port       = var.ascs_ilb_healthcheck_port
  ascs_machine_type               = var.ascs_machine_type
  ascs_sa_email                   = var.ascs_sa_email
  ascs_vm_names                   = var.ascs_vm_names
  configuration_bucket_name       = var.configuration_bucket_name
  create_comms_firewall           = var.create_comms_firewall
  custom_app_metadata             = var.custom_app_metadata
  custom_ascs_metadata            = var.custom_ascs_metadata
  custom_db_metadata              = var.custom_db_metadata
  custom_tags                     = var.custom_tags
  data_stripe_size                = var.data_stripe_size
  db_data_disk_type               = var.db_data_disk_type
  db_disk_backup_size             = var.db_disk_backup_size
  db_disk_hana_data_size          = var.db_disk_hana_data_size
  db_disk_hana_log_size           = var.db_disk_hana_log_size
  db_disk_hana_shared_size        = var.db_disk_hana_shared_size
  db_disk_type                    = var.db_disk_type
  db_disk_usr_sap_size            = var.db_disk_usr_sap_size
  db_ilb_healthcheck_port         = var.db_ilb_healthcheck_port
  db_log_disk_type                = var.db_log_disk_type
  db_machine_type                 = var.db_machine_type
  db_sa_email                     = var.db_sa_email
  db_sid                          = var.db_sid
  db_vm_names                     = var.db_vm_names
  deployment_has_dns              = var.deployment_has_dns
  deployment_name                 = var.deployment_name
  disk_size_map                   = var.disk_size_map
  dns_zone_name_suffix            = var.dns_zone_name_suffix
  ers_ilb_healthcheck_port        = var.ers_ilb_healthcheck_port
  existing_dns_zone_name          = var.existing_dns_zone_name
  filestore_gb                    = var.filestore_gb
  filestore_location              = var.filestore_location
  filestore_tier                  = var.filestore_tier
  fstore_mount_point              = var.fstore_mount_point
  gcp_project_id                  = var.gcp_project_id
  hana_secret_name                = var.hana_secret_name
  is_test                         = var.is_test
  log_stripe_size                 = var.log_stripe_size
  media_bucket_name               = var.media_bucket_name
  network_project                 = var.network_project
  number_data_disks               = var.number_data_disks
  number_log_disks                = var.number_log_disks
  package_location                = var.package_location
  primary_startup_url             = var.primary_startup_url
  public_ansible_runner_ip        = var.public_ansible_runner_ip
  public_ip                       = var.public_ip
  region_name                     = var.region_name
  sap_boot_disk_image             = var.sap_boot_disk_image
  sap_boot_disk_image_app         = var.sap_boot_disk_image_app
  sap_boot_disk_image_ascs        = var.sap_boot_disk_image_ascs
  sap_boot_disk_image_db          = var.sap_boot_disk_image_db
  sap_instance_id_app             = var.sap_instance_id_app
  sap_instance_id_ascs            = var.sap_instance_id_ascs
  sap_instance_id_db              = var.sap_instance_id_db
  sap_instance_id_ers             = var.sap_instance_id_ers
  sap_version                     = var.sap_version
  subnet_name                     = var.subnet_name
  virtualize_disks                = var.virtualize_disks
  vm_prefix                       = var.vm_prefix
  vpc_name                        = var.vpc_name
  zone1_name                      = var.zone1_name
  zone2_name                      = var.zone2_name
}
