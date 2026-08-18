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

module "forseti_real_time_enforcer" {
  source                          = "terraform-google-modules/forseti/google//modules/real_time_enforcer"
  version                         = "4.1.0"
  client_region                   = var.client_region
  enforcer_boot_image             = var.enforcer_boot_image
  enforcer_instance_access_config = var.enforcer_instance_access_config
  enforcer_instance_metadata      = var.enforcer_instance_metadata
  enforcer_instance_private       = var.enforcer_instance_private
  enforcer_region                 = var.enforcer_region
  enforcer_ssh_allow_ranges       = var.enforcer_ssh_allow_ranges
  enforcer_type                   = var.enforcer_type
  enforcer_viewer_role            = var.enforcer_viewer_role
  enforcer_writer_role            = var.enforcer_writer_role
  network                         = var.network
  network_project                 = var.network_project
  org_id                          = var.org_id
  project_id                      = var.project_id
  storage_bucket_location         = var.storage_bucket_location
  subnetwork                      = var.subnetwork
  suffix                          = var.suffix
  topic                           = var.topic
}
