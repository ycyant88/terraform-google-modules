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

module "network_private-service-access" {
  source        = "terraform-google-modules/network/google//modules/private-service-access"
  version       = "18.1.2"
  address_name  = var.address_name
  network_id    = var.network_id
  prefix_length = var.prefix_length
  project_id    = var.project_id
}
