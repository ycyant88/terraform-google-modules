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

module "kubernetes-engine_services" {
  source                      = "terraform-google-modules/kubernetes-engine/google//modules/services"
  version                     = "31.1.0"
  disable_dependent_services  = var.disable_dependent_services
  disable_services_on_destroy = var.disable_services_on_destroy
  enable_apis                 = var.enable_apis
  project_id                  = var.project_id
}
