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

module "network_fabric-net-firewall" {
  source                  = "terraform-google-modules/network/google//modules/fabric-net-firewall"
  version                 = "1.5.0"
  admin_ranges            = var.admin_ranges
  admin_ranges_enabled    = var.admin_ranges_enabled
  custom_rules            = var.custom_rules
  http_source_ranges      = var.http_source_ranges
  https_source_ranges     = var.https_source_ranges
  internal_allow          = var.internal_allow
  internal_ranges         = var.internal_ranges
  internal_ranges_enabled = var.internal_ranges_enabled
  network                 = var.network
  project_id              = var.project_id
  ssh_source_ranges       = var.ssh_source_ranges
}
