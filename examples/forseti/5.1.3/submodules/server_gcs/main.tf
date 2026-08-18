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

module "forseti_server_gcs" {
  source                   = "terraform-google-modules/forseti/google//modules/server_gcs"
  version                  = "5.1.3"
  bucket_cai_lifecycle_age = var.bucket_cai_lifecycle_age
  bucket_cai_location      = var.bucket_cai_location
  enable_cai_bucket        = var.enable_cai_bucket
  project_id               = var.project_id
  services                 = var.services
  storage_bucket_location  = var.storage_bucket_location
  suffix                   = var.suffix
}
