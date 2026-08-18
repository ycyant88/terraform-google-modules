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

module "vm_compute_disk_snapshot" {
  source                    = "terraform-google-modules/vm/google//modules/compute_disk_snapshot"
  version                   = "13.4.0"
  disks                     = var.disks
  module_depends_on         = var.module_depends_on
  name                      = var.name
  project                   = var.project
  region                    = var.region
  snapshot_properties       = var.snapshot_properties
  snapshot_retention_policy = var.snapshot_retention_policy
  snapshot_schedule         = var.snapshot_schedule
}
