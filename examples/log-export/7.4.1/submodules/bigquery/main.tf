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

module "log-export_bigquery" {
  source                     = "terraform-google-modules/log-export/google//modules/bigquery"
  version                    = "7.4.1"
  dataset_name               = var.dataset_name
  delete_contents_on_destroy = var.delete_contents_on_destroy
  description                = var.description
  expiration_days            = var.expiration_days
  kms_key_name               = var.kms_key_name
  labels                     = var.labels
  location                   = var.location
  log_sink_writer_identity   = var.log_sink_writer_identity
  project_id                 = var.project_id
}
