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

module "bastion-host_iap-tunneling" {
  source                     = "terraform-google-modules/bastion-host/google//modules/iap-tunneling"
  version                    = "2.6.0"
  fw_name_allow_ssh_from_iap = var.fw_name_allow_ssh_from_iap
  host_project               = var.host_project
  instances                  = var.instances
  members                    = var.members
  network                    = var.network
  network_tags               = var.network_tags
  project                    = var.project
  service_accounts           = var.service_accounts
}
