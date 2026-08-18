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

module "iam_artifact_registry_iam" {
  source       = "terraform-google-modules/iam/google//modules/artifact_registry_iam"
  version      = "7.7.0"
  bindings     = var.bindings
  location     = var.location
  mode         = var.mode
  project      = var.project
  repositories = var.repositories
}
