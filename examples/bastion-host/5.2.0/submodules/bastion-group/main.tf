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

module "bastion-host_bastion-group" {
  source                                    = "terraform-google-modules/bastion-host/google//modules/bastion-group"
  version                                   = "5.2.0"
  additional_networks                       = var.additional_networks
  fw_name_allow_ssh_from_health_check_cidrs = var.fw_name_allow_ssh_from_health_check_cidrs
  fw_name_allow_ssh_from_iap                = var.fw_name_allow_ssh_from_iap
  health_check                              = var.health_check
  host_project                              = var.host_project
  image_family                              = var.image_family
  image_project                             = var.image_project
  labels                                    = var.labels
  machine_type                              = var.machine_type
  members                                   = var.members
  metadata                                  = var.metadata
  name                                      = var.name
  network                                   = var.network
  project                                   = var.project
  random_role_id                            = var.random_role_id
  region                                    = var.region
  scopes                                    = var.scopes
  service_account_email                     = var.service_account_email
  service_account_name                      = var.service_account_name
  service_account_roles                     = var.service_account_roles
  service_account_roles_supplemental        = var.service_account_roles_supplemental
  shielded_vm                               = var.shielded_vm
  startup_script                            = var.startup_script
  subnet                                    = var.subnet
  tags                                      = var.tags
  target_size                               = var.target_size
  zone                                      = var.zone
}
