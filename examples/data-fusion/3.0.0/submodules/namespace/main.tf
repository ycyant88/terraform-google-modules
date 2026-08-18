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

module "data-fusion_namespace" {
  source      = "terraform-google-modules/data-fusion/google//modules/namespace"
  version     = "3.0.0"
  name        = var.name
  preferences = var.preferences
}
