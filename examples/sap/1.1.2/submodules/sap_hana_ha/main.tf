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
  source                             = "terraform-google-modules/sap/google//modules/sap_hana_ha"
  version                            = "1.1.2"
  can_ip_forward                     = var.can_ip_forward
  is_work_load_management_deployment = var.is_work_load_management_deployment
  linux_image                        = var.linux_image
  linux_image_project                = var.linux_image_project
  loadbalancer_name                  = var.loadbalancer_name
  machine_type                       = var.machine_type
  network                            = var.network
  network_tags                       = var.network_tags
  post_deployment_script             = var.post_deployment_script
  primary_instance_group_name        = var.primary_instance_group_name
  primary_instance_name              = var.primary_instance_name
  primary_reservation_name           = var.primary_reservation_name
  primary_startup_url                = var.primary_startup_url
  primary_zone                       = var.primary_zone
  project_id                         = var.project_id
  public_ip                          = var.public_ip
  sap_deployment_debug               = var.sap_deployment_debug
  sap_hana_backup_size               = var.sap_hana_backup_size
  sap_hana_deployment_bucket         = var.sap_hana_deployment_bucket
  sap_hana_instance_number           = var.sap_hana_instance_number
  sap_hana_sapsys_gid                = var.sap_hana_sapsys_gid
  sap_hana_sid                       = var.sap_hana_sid
  sap_hana_sidadm_password           = var.sap_hana_sidadm_password
  sap_hana_sidadm_password_secret    = var.sap_hana_sidadm_password_secret
  sap_hana_sidadm_uid                = var.sap_hana_sidadm_uid
  sap_hana_system_password           = var.sap_hana_system_password
  sap_hana_system_password_secret    = var.sap_hana_system_password_secret
  sap_vip                            = var.sap_vip
  secondary_instance_group_name      = var.secondary_instance_group_name
  secondary_instance_name            = var.secondary_instance_name
  secondary_reservation_name         = var.secondary_reservation_name
  secondary_startup_url              = var.secondary_startup_url
  secondary_zone                     = var.secondary_zone
  service_account                    = var.service_account
  subnetwork                         = var.subnetwork
  wlm_deployment_name                = var.wlm_deployment_name
}
