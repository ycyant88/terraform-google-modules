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

module "network_subnets-beta" {
  source            = "terraform-google-modules/network/google//modules/subnets-beta"
  version           = "3.2.1"
  module_depends_on = var.module_depends_on
  network_name      = var.network_name
  project_id        = var.project_id
  secondary_ranges  = var.secondary_ranges
  subnets           = var.subnets
}
