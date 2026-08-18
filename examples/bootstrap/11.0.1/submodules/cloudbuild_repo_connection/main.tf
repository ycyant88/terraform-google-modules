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

module "bootstrap_cloudbuild_repo_connection" {
  source                     = "terraform-google-modules/bootstrap/google//modules/cloudbuild_repo_connection"
  version                    = "11.0.1"
  cloud_build_repositories   = var.cloud_build_repositories
  cloudbuild_connection_name = var.cloudbuild_connection_name
  connection_config          = var.connection_config
  location                   = var.location
  project_id                 = var.project_id
}
