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

module "lb-internal" {
  source                          = "terraform-google-modules/lb-internal/google"
  version                         = "4.3.0"
  all_ports                       = var.all_ports
  backends                        = var.backends
  connection_draining_timeout_sec = var.connection_draining_timeout_sec
  create_backend_firewall         = var.create_backend_firewall
  create_health_check_firewall    = var.create_health_check_firewall
  global_access                   = var.global_access
  health_check                    = var.health_check
  ip_address                      = var.ip_address
  ip_protocol                     = var.ip_protocol
  name                            = var.name
  network                         = var.network
  network_project                 = var.network_project
  ports                           = var.ports
  project                         = var.project
  region                          = var.region
  service_label                   = var.service_label
  session_affinity                = var.session_affinity
  source_ip_ranges                = var.source_ip_ranges
  source_service_accounts         = var.source_service_accounts
  source_tags                     = var.source_tags
  subnetwork                      = var.subnetwork
  target_service_accounts         = var.target_service_accounts
  target_tags                     = var.target_tags
}
