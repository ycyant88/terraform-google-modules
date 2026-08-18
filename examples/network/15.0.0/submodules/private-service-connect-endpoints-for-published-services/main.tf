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

module "network_private-service-connect-endpoints-for-published-services" {
  source                      = "terraform-google-modules/network/google//modules/private-service-connect-endpoints-for-published-services"
  version                     = "15.0.0"
  address_name                = var.address_name
  forwarding_rule_name        = var.forwarding_rule_name
  ip_address                  = var.ip_address
  ip_version                  = var.ip_version
  network                     = var.network
  project_id                  = var.project_id
  psc_global_access           = var.psc_global_access
  region                      = var.region
  service_attachment          = var.service_attachment
  service_directory_namespace = var.service_directory_namespace
  subnetwork                  = var.subnetwork
}
