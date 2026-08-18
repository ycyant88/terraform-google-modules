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

module "iam_secure_source_manager_iam" {
  source     = "terraform-google-modules/iam/google//modules/secure_source_manager_iam"
  version    = "8.1.0"
  bindings   = var.bindings
  entity_ids = var.entity_ids
  location   = var.location
  mode       = var.mode
  project    = var.project
}
