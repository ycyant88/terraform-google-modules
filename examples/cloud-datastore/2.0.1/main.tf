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
  source  = "terraform-google-modules/cloud-datastore/google"
  version = "2.0.1"
  indexes = var.indexes
  project = var.project
}
