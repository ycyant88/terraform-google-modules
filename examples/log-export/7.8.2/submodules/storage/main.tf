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
  version                     = "7.8.2"
  data_locations              = var.data_locations
  force_destroy               = var.force_destroy
  kms_key_name                = var.kms_key_name
  lifecycle_rules             = var.lifecycle_rules
  location                    = var.location
  log_sink_writer_identity    = var.log_sink_writer_identity
  project_id                  = var.project_id
  public_access_prevention    = var.public_access_prevention
  retention_policy            = var.retention_policy
  storage_bucket_labels       = var.storage_bucket_labels
  storage_bucket_name         = var.storage_bucket_name
  storage_class               = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level_access
  versioning                  = var.versioning
}
