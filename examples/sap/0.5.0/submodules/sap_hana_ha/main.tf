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
  source                         = "terraform-google-modules/sap/google//modules/sap_hana_ha"
  version                        = "0.5.0"
  autodelete_disk                = var.autodelete_disk
  boot_disk_size                 = var.boot_disk_size
  boot_disk_type                 = var.boot_disk_type
  disk_name_0                    = var.disk_name_0
  disk_name_1                    = var.disk_name_1
  disk_name_2                    = var.disk_name_2
  disk_name_3                    = var.disk_name_3
  disk_type_0                    = var.disk_type_0
  disk_type_1                    = var.disk_type_1
  instance_type                  = var.instance_type
  linux_image_family             = var.linux_image_family
  linux_image_project            = var.linux_image_project
  network_tags                   = var.network_tags
  pd_hdd_size                    = var.pd_hdd_size
  pd_kms_key                     = var.pd_kms_key
  pd_ssd_size                    = var.pd_ssd_size
  post_deployment_script         = var.post_deployment_script
  primary_instance_internal_ip   = var.primary_instance_internal_ip
  primary_instance_ip            = var.primary_instance_ip
  primary_instance_name          = var.primary_instance_name
  primary_zone                   = var.primary_zone
  project_id                     = var.project_id
  public_ip                      = var.public_ip
  region                         = var.region
  sap_deployment_debug           = var.sap_deployment_debug
  sap_hana_deployment_bucket     = var.sap_hana_deployment_bucket
  sap_hana_instance_number       = var.sap_hana_instance_number
  sap_hana_sapsys_gid            = var.sap_hana_sapsys_gid
  sap_hana_sid                   = var.sap_hana_sid
  sap_hana_sidadm_password       = var.sap_hana_sidadm_password
  sap_hana_sidadm_uid            = var.sap_hana_sidadm_uid
  sap_hana_system_password       = var.sap_hana_system_password
  sap_vip                        = var.sap_vip
  sap_vip_internal_address       = var.sap_vip_internal_address
  sap_vip_secondary_range        = var.sap_vip_secondary_range
  secondary_instance_internal_ip = var.secondary_instance_internal_ip
  secondary_instance_ip          = var.secondary_instance_ip
  secondary_instance_name        = var.secondary_instance_name
  secondary_zone                 = var.secondary_zone
  service_account_email          = var.service_account_email
  startup_script_1               = var.startup_script_1
  startup_script_2               = var.startup_script_2
  subnetwork                     = var.subnetwork
}
