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

module "vm_instance_template" {
  source                   = "terraform-google-modules/vm/google//modules/instance_template"
  version                  = "2.1.0"
  access_config            = var.access_config
  additional_disks         = var.additional_disks
  auto_delete              = var.auto_delete
  can_ip_forward           = var.can_ip_forward
  disk_size_gb             = var.disk_size_gb
  disk_type                = var.disk_type
  enable_shielded_vm       = var.enable_shielded_vm
  labels                   = var.labels
  machine_type             = var.machine_type
  metadata                 = var.metadata
  name_prefix              = var.name_prefix
  network                  = var.network
  preemptible              = var.preemptible
  project_id               = var.project_id
  region                   = var.region
  service_account          = var.service_account
  shielded_instance_config = var.shielded_instance_config
  source_image             = var.source_image
  source_image_family      = var.source_image_family
  source_image_project     = var.source_image_project
  startup_script           = var.startup_script
  subnetwork               = var.subnetwork
  subnetwork_project       = var.subnetwork_project
  tags                     = var.tags
}
