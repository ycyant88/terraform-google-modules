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

module "cloud-dns" {
  source                             = "terraform-google-modules/cloud-dns/google"
  version                            = "4.2.1"
  default_key_specs_key              = var.default_key_specs_key
  default_key_specs_zone             = var.default_key_specs_zone
  description                        = var.description
  dnssec_config                      = var.dnssec_config
  domain                             = var.domain
  force_destroy                      = var.force_destroy
  labels                             = var.labels
  name                               = var.name
  private_visibility_config_networks = var.private_visibility_config_networks
  project_id                         = var.project_id
  recordsets                         = var.recordsets
  service_namespace_url              = var.service_namespace_url
  target_name_server_addresses       = var.target_name_server_addresses
  target_network                     = var.target_network
  type                               = var.type
}
