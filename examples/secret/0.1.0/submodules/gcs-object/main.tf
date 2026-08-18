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

module "secret_gcs-object" {
  source   = "terraform-google-modules/secret/google//modules/gcs-object"
  version  = "0.1.0"
  bucket   = var.bucket
  duration = var.duration
  path     = var.path
}
