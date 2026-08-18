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

module "sap_netweaver" {
  source                 = "terraform-google-modules/sap/google//modules/netweaver"
  version                = "0.2.0"
  autodelete_disk        = var.autodelete_disk
  boot_disk_size         = var.boot_disk_size
  boot_disk_type         = var.boot_disk_type
  device_0               = var.device_0
  device_1               = var.device_1
  device_2               = var.device_2
  device_3               = var.device_3
  disk_type              = var.disk_type
  instance_name          = var.instance_name
  instance_type          = var.instance_type
  linux_image_family     = var.linux_image_family
  linux_image_project    = var.linux_image_project
  network_tags           = var.network_tags
  post_deployment_script = var.post_deployment_script
  project_id             = var.project_id
  public_ip              = var.public_ip
  region                 = var.region
  sap_deployment_debug   = var.sap_deployment_debug
  sap_mnt_size           = var.sap_mnt_size
  service_account_email  = var.service_account_email
  startup_script         = var.startup_script
  subnetwork             = var.subnetwork
  swap_size              = var.swap_size
  usr_sap_size           = var.usr_sap_size
  zone                   = var.zone
}
