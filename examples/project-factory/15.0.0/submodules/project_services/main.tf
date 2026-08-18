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

module "project-factory_project_services" {
  source                      = "terraform-google-modules/project-factory/google//modules/project_services"
  version                     = "15.0.0"
  activate_api_identities     = var.activate_api_identities
  activate_apis               = var.activate_apis
  disable_dependent_services  = var.disable_dependent_services
  disable_services_on_destroy = var.disable_services_on_destroy
  enable_apis                 = var.enable_apis
  project_id                  = var.project_id
}
