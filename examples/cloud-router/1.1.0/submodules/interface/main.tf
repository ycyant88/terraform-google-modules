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

module "cloud-router_interface" {
  source                  = "terraform-google-modules/cloud-router/google//modules/interface"
  version                 = "1.1.0"
  interconnect_attachment = var.interconnect_attachment
  ip_range                = var.ip_range
  name                    = var.name
  peers                   = var.peers
  project                 = var.project
  region                  = var.region
  router                  = var.router
  vpn_tunnel              = var.vpn_tunnel
}
