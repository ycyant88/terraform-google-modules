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

module "bastion-host" {
  source                             = "terraform-google-modules/bastion-host/google"
  version                            = "0.1.0"
  image                              = var.image
  labels                             = var.labels
  machine_type                       = var.machine_type
  members                            = var.members
  name                               = var.name
  network                            = var.network
  project                            = var.project
  region                             = var.region
  scopes                             = var.scopes
  service_account_roles              = var.service_account_roles
  service_account_roles_supplemental = var.service_account_roles_supplemental
  shielded_vm                        = var.shielded_vm
  startup_script                     = var.startup_script
  subnet                             = var.subnet
  zone                               = var.zone
}
