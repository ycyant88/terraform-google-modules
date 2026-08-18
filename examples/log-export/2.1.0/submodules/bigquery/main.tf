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
  source                   = "terraform-google-modules/log-export/google//modules/bigquery"
  version                  = "2.1.0"
  dataset_name             = var.dataset_name
  location                 = var.location
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
}
