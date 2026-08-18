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

module "network_routes-beta" {
  source            = "terraform-google-modules/network/google//modules/routes-beta"
  version           = "5.2.0"
  module_depends_on = var.module_depends_on
  network_name      = var.network_name
  project_id        = var.project_id
  routes            = var.routes
  routes_count      = var.routes_count
}
