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

module "network_private-service-connect" {
  source                       = "terraform-google-modules/network/google//modules/private-service-connect"
  version                      = "13.0.1"
  dns_code                     = var.dns_code
  forwarding_rule_name         = var.forwarding_rule_name
  forwarding_rule_target       = var.forwarding_rule_target
  network_self_link            = var.network_self_link
  private_service_connect_ip   = var.private_service_connect_ip
  private_service_connect_name = var.private_service_connect_name
  project_id                   = var.project_id
  psc_global_access            = var.psc_global_access
  service_directory_namespace  = var.service_directory_namespace
  service_directory_region     = var.service_directory_region
}
