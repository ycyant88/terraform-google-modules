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

module "vpn_vpn_ha" {
  source                  = "terraform-google-modules/vpn/google//modules/vpn_ha"
  version                 = "1.4.1"
  name                    = var.name
  network                 = var.network
  peer_external_gateway   = var.peer_external_gateway
  peer_gcp_gateway        = var.peer_gcp_gateway
  project_id              = var.project_id
  region                  = var.region
  route_priority          = var.route_priority
  router_advertise_config = var.router_advertise_config
  router_asn              = var.router_asn
  router_name             = var.router_name
  tunnels                 = var.tunnels
}
