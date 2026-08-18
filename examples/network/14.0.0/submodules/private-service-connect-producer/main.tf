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

module "network_private-service-connect-producer" {
  source                      = "terraform-google-modules/network/google//modules/private-service-connect-producer"
  version                     = "14.0.0"
  connection_preference       = var.connection_preference
  consumer_accept_lists       = var.consumer_accept_lists
  consumer_reject_lists       = var.consumer_reject_lists
  domain_names                = var.domain_names
  enable_proxy_protocol       = var.enable_proxy_protocol
  name                        = var.name
  nat_subnets                 = var.nat_subnets
  network                     = var.network
  network_project_id          = var.network_project_id
  project_id                  = var.project_id
  propagated_connection_limit = var.propagated_connection_limit
  reconcile_connections       = var.reconcile_connections
  region                      = var.region
  target_service              = var.target_service
}
