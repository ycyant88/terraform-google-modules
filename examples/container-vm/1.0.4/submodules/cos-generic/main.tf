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

module "container-vm_cos-generic" {
  source                    = "terraform-google-modules/container-vm/google//modules/cos-generic"
  version                   = "1.0.4"
  allow_stopping_for_update = var.allow_stopping_for_update
  boot_disk_size            = var.boot_disk_size
  cloud_init                = var.cloud_init
  cloud_init_custom_var     = var.cloud_init_custom_var
  instance_count            = var.instance_count
  instance_type             = var.instance_type
  labels                    = var.labels
  prefix                    = var.prefix
  project_id                = var.project_id
  region                    = var.region
  reserve_ip                = var.reserve_ip
  scopes                    = var.scopes
  service_account           = var.service_account
  stackdriver_logging       = var.stackdriver_logging
  stackdriver_monitoring    = var.stackdriver_monitoring
  subnetwork                = var.subnetwork
  vm_tags                   = var.vm_tags
  zone                      = var.zone
}
