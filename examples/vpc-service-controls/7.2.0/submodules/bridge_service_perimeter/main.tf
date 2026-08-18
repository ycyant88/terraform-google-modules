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

module "vpc-service-controls_bridge_service_perimeter" {
  source         = "terraform-google-modules/vpc-service-controls/google//modules/bridge_service_perimeter"
  version        = "7.2.0"
  description    = var.description
  perimeter_name = var.perimeter_name
  policy         = var.policy
  resource_keys  = var.resource_keys
  resources      = var.resources
}
