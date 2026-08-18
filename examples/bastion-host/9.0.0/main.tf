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
  version                            = "9.0.0"
  access_config                      = var.access_config
  additional_networks                = var.additional_networks
  additional_ports                   = var.additional_ports
  can_ip_forward                     = var.can_ip_forward
  create_firewall_rule               = var.create_firewall_rule
  create_instance_from_template      = var.create_instance_from_template
  disk_labels                        = var.disk_labels
  disk_size_gb                       = var.disk_size_gb
  disk_type                          = var.disk_type
  external_ip                        = var.external_ip
  fw_name_allow_ssh_from_iap         = var.fw_name_allow_ssh_from_iap
  host_project                       = var.host_project
  image                              = var.image
  image_family                       = var.image_family
  image_project                      = var.image_project
  labels                             = var.labels
  machine_type                       = var.machine_type
  members                            = var.members
  metadata                           = var.metadata
  name                               = var.name
  name_prefix                        = var.name_prefix
  network                            = var.network
  network_ip                         = var.network_ip
  preemptible                        = var.preemptible
  project                            = var.project
  random_role_id                     = var.random_role_id
  region                             = var.region
  resource_manager_tags              = var.resource_manager_tags
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
