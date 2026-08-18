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

module "cloud-datastore" {
  source      = "terraform-google-modules/cloud-datastore/google"
  version     = "1.0.0"
  credentials = var.credentials
  indexes     = var.indexes
  project     = var.project
}
