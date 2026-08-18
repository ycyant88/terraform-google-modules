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

module "iam_dns_zones_iam" {
  source        = "terraform-google-modules/iam/google//modules/dns_zones_iam"
  version       = "7.7.0"
  bindings      = var.bindings
  managed_zones = var.managed_zones
  mode          = var.mode
  project       = var.project
}
