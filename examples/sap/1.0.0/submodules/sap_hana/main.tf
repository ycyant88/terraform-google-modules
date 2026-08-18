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
  source                          = "terraform-google-modules/sap/google//modules/sap_hana"
  version                         = "1.0.0"
  can_ip_forward                  = var.can_ip_forward
  instance_name                   = var.instance_name
  linux_image                     = var.linux_image
  linux_image_project             = var.linux_image_project
  machine_type                    = var.machine_type
  network_tags                    = var.network_tags
  post_deployment_script          = var.post_deployment_script
  primary_startup_url             = var.primary_startup_url
  project_id                      = var.project_id
  public_ip                       = var.public_ip
  reservation_name                = var.reservation_name
  sap_deployment_debug            = var.sap_deployment_debug
  sap_hana_backup_size            = var.sap_hana_backup_size
  sap_hana_deployment_bucket      = var.sap_hana_deployment_bucket
  sap_hana_instance_number        = var.sap_hana_instance_number
  sap_hana_sapsys_gid             = var.sap_hana_sapsys_gid
  sap_hana_scaleout_nodes         = var.sap_hana_scaleout_nodes
  sap_hana_sid                    = var.sap_hana_sid
  sap_hana_sidadm_password        = var.sap_hana_sidadm_password
  sap_hana_sidadm_password_secret = var.sap_hana_sidadm_password_secret
  sap_hana_sidadm_uid             = var.sap_hana_sidadm_uid
  sap_hana_system_password        = var.sap_hana_system_password
  sap_hana_system_password_secret = var.sap_hana_system_password_secret
  secondary_startup_url           = var.secondary_startup_url
  service_account                 = var.service_account
  subnetwork                      = var.subnetwork
  zone                            = var.zone
}
