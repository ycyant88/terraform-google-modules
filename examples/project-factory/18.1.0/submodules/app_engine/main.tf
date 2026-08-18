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

module "project-factory_app_engine" {
  source           = "terraform-google-modules/project-factory/google//modules/app_engine"
  version          = "18.1.0"
  auth_domain      = var.auth_domain
  feature_settings = var.feature_settings
  location_id      = var.location_id
  project_id       = var.project_id
  serving_status   = var.serving_status
}
