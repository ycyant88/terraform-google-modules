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
  source                     = "terraform-google-modules/sap/google//modules/sap_hana"
  version                    = "0.2.0"
  address_name               = var.address_name
  autodelete_disk            = var.autodelete_disk
  boot_disk_size             = var.boot_disk_size
  boot_disk_type             = var.boot_disk_type
  device_name_pd_hdd         = var.device_name_pd_hdd
  device_name_pd_ssd         = var.device_name_pd_ssd
  disk_name_0                = var.disk_name_0
  disk_name_1                = var.disk_name_1
  disk_type_0                = var.disk_type_0
  disk_type_1                = var.disk_type_1
  instance_name              = var.instance_name
  instance_type              = var.instance_type
  linux_image_family         = var.linux_image_family
  linux_image_project        = var.linux_image_project
  network_tags               = var.network_tags
  pd_hdd_size                = var.pd_hdd_size
  pd_ssd_size                = var.pd_ssd_size
  post_deployment_script     = var.post_deployment_script
  project_id                 = var.project_id
  region                     = var.region
  sap_deployment_debug       = var.sap_deployment_debug
  sap_hana_deployment_bucket = var.sap_hana_deployment_bucket
  sap_hana_instance_number   = var.sap_hana_instance_number
  sap_hana_sapsys_gid        = var.sap_hana_sapsys_gid
  sap_hana_sid               = var.sap_hana_sid
  sap_hana_sidadm_password   = var.sap_hana_sidadm_password
  sap_hana_sidadm_uid        = var.sap_hana_sidadm_uid
  sap_hana_system_password   = var.sap_hana_system_password
  service_account_email      = var.service_account_email
  startup_script             = var.startup_script
  subnetwork                 = var.subnetwork
  zone                       = var.zone
}
