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
  version                     = "5.3.0"
  access                      = var.access
  dataset_id                  = var.dataset_id
  dataset_labels              = var.dataset_labels
  dataset_name                = var.dataset_name
  default_table_expiration_ms = var.default_table_expiration_ms
  delete_contents_on_destroy  = var.delete_contents_on_destroy
  deletion_protection         = var.deletion_protection
  description                 = var.description
  encryption_key              = var.encryption_key
  external_tables             = var.external_tables
  location                    = var.location
  project_id                  = var.project_id
  routines                    = var.routines
  tables                      = var.tables
  views                       = var.views
}
