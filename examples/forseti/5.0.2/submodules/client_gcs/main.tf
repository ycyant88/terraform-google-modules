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

module "forseti_client_gcs" {
  source                  = "terraform-google-modules/forseti/google//modules/client_gcs"
  version                 = "5.0.2"
  project_id              = var.project_id
  services                = var.services
  storage_bucket_location = var.storage_bucket_location
  suffix                  = var.suffix
}
