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
  version                            = "2.7.0"
  additional_ports                   = var.additional_ports
  create_instance_from_template      = var.create_instance_from_template
  disk_size_gb                       = var.disk_size_gb
  disk_type                          = var.disk_type
  fw_name_allow_ssh_from_iap         = var.fw_name_allow_ssh_from_iap
  host_project                       = var.host_project
  image                              = var.image
  image_family                       = var.image_family
  image_project                      = var.image_project
  labels                             = var.labels
  machine_type                       = var.machine_type
  members                            = var.members
  name                               = var.name
  name_prefix                        = var.name_prefix
  network                            = var.network
  project                            = var.project
  random_role_id                     = var.random_role_id
  scopes                             = var.scopes
  service_account_email              = var.service_account_email
  service_account_name               = var.service_account_name
  service_account_roles              = var.service_account_roles
  service_account_roles_supplemental = var.service_account_roles_supplemental
  shielded_vm                        = var.shielded_vm
  startup_script                     = var.startup_script
  subnet                             = var.subnet
  tags                               = var.tags
  zone                               = var.zone
}
