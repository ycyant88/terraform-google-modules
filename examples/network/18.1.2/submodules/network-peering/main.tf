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

module "network_network-peering" {
  source                                    = "terraform-google-modules/network/google//modules/network-peering"
  version                                   = "18.1.2"
  export_local_custom_routes                = var.export_local_custom_routes
  export_local_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip
  export_peer_custom_routes                 = var.export_peer_custom_routes
  export_peer_subnet_routes_with_public_ip  = var.export_peer_subnet_routes_with_public_ip
  local_network                             = var.local_network
  module_depends_on                         = var.module_depends_on
  peer_network                              = var.peer_network
  prefix                                    = var.prefix
  stack_type                                = var.stack_type
}
