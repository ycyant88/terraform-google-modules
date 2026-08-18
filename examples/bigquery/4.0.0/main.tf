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

module "bigquery" {
  source                      = "terraform-google-modules/bigquery/google"
  version                     = "4.0.0"
  access                      = var.access
  dataset_id                  = var.dataset_id
  dataset_labels              = var.dataset_labels
  dataset_name                = var.dataset_name
  default_table_expiration_ms = var.default_table_expiration_ms
  description                 = var.description
  location                    = var.location
  project_id                  = var.project_id
  tables                      = var.tables
}
