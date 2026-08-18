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

module "service-accounts_simple-sa" {
  source        = "terraform-google-modules/service-accounts/google//modules/simple-sa"
  version       = "4.5.3"
  description   = var.description
  display_name  = var.display_name
  name          = var.name
  project_id    = var.project_id
  project_roles = var.project_roles
}
