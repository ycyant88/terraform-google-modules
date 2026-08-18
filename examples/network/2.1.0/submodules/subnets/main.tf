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

module "network_subnets" {
  source           = "terraform-google-modules/network/google//modules/subnets"
  version          = "2.1.0"
  network_name     = var.network_name
  project_id       = var.project_id
  secondary_ranges = var.secondary_ranges
  subnets          = var.subnets
}
