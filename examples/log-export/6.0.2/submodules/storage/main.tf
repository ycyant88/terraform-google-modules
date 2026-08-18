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

module "log-export_storage" {
  source                      = "terraform-google-modules/log-export/google//modules/storage"
  version                     = "6.0.2"
  expiration_days             = var.expiration_days
  force_destroy               = var.force_destroy
  location                    = var.location
  log_sink_writer_identity    = var.log_sink_writer_identity
  project_id                  = var.project_id
  retention_policy            = var.retention_policy
  storage_bucket_name         = var.storage_bucket_name
  storage_class               = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level_access
  versioning                  = var.versioning
}
