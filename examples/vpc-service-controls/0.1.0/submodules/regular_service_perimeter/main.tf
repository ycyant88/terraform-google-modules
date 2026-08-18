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

module "vpc-service-controls_regular_service_perimeter" {
  source              = "terraform-google-modules/vpc-service-controls/google//modules/regular_service_perimeter"
  version             = "0.1.0"
  access_levels       = var.access_levels
  description         = var.description
  perimeter_name      = var.perimeter_name
  policy              = var.policy
  resources           = var.resources
  restricted_services = var.restricted_services
  shared_resources    = var.shared_resources
}
