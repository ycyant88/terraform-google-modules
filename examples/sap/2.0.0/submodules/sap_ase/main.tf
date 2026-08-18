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

module "sap_sap_ase" {
  source                 = "terraform-google-modules/sap/google//modules/sap_ase"
  version                = "2.0.0"
  ase_backup_size        = var.ase_backup_size
  ase_diag_size          = var.ase_diag_size
  ase_log_size           = var.ase_log_size
  ase_log_ssd            = var.ase_log_ssd
  ase_sap_data_size      = var.ase_sap_data_size
  ase_sap_data_ssd       = var.ase_sap_data_ssd
  ase_sap_temp_size      = var.ase_sap_temp_size
  ase_sid                = var.ase_sid
  ase_sid_size           = var.ase_sid_size
  can_ip_forward         = var.can_ip_forward
  custom_metadata        = var.custom_metadata
  instance_name          = var.instance_name
  linux_image            = var.linux_image
  linux_image_project    = var.linux_image_project
  machine_type           = var.machine_type
  network_tags           = var.network_tags
  post_deployment_script = var.post_deployment_script
  primary_startup_url    = var.primary_startup_url
  project_id             = var.project_id
  public_ip              = var.public_ip
  reservation_name       = var.reservation_name
  sap_deployment_debug   = var.sap_deployment_debug
  sap_mnt_size           = var.sap_mnt_size
  service_account        = var.service_account
  subnetwork             = var.subnetwork
  swap_size              = var.swap_size
  usr_sap_size           = var.usr_sap_size
  zone                   = var.zone
}
