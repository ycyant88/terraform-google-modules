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
  source                    = "terraform-google-modules/cloud-dns/google"
  version                   = "1.0.0"
  domain                    = var.domain
  name                      = var.name
  private_visibility_config = var.private_visibility_config
  project_id                = var.project_id
  record_data               = var.record_data
  record_names              = var.record_names
  target_name_servers       = var.target_name_servers
  target_network            = var.target_network
  zone_type                 = var.zone_type
}
