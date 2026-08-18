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

module "network_routes" {
  source                                 = "terraform-google-modules/network/google//modules/routes"
  version                                = "2.1.2"
  delete_default_internet_gateway_routes = var.delete_default_internet_gateway_routes
  module_depends_on                      = var.module_depends_on
  network_name                           = var.network_name
  project_id                             = var.project_id
  routes                                 = var.routes
}
