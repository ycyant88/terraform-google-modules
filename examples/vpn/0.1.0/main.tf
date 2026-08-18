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

module "vpn" {
  source                    = "terraform-google-modules/vpn/google"
  version                   = "0.1.0"
  advertised_route_priority = var.advertised_route_priority
  bgp_cr_session_range      = var.bgp_cr_session_range
  bgp_remote_session_range  = var.bgp_remote_session_range
  cr_name                   = var.cr_name
  gateway_name              = var.gateway_name
  network                   = var.network
  peer_asn                  = var.peer_asn
  peer_ips                  = var.peer_ips
  project_id                = var.project_id
  region                    = var.region
  remote_subnet             = var.remote_subnet
  route_priority            = var.route_priority
  shared_secret             = var.shared_secret
  tunnel_count              = var.tunnel_count
  tunnel_name_prefix        = var.tunnel_name_prefix
}
