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
  version                     = "4.4.0"
  access                      = var.access
  dataset_id                  = var.dataset_id
  dataset_labels              = var.dataset_labels
  dataset_name                = var.dataset_name
  default_table_expiration_ms = var.default_table_expiration_ms
  delete_contents_on_destroy  = var.delete_contents_on_destroy
  description                 = var.description
  encryption_key              = var.encryption_key
  location                    = var.location
  project_id                  = var.project_id
  tables                      = var.tables
  views                       = var.views
}
