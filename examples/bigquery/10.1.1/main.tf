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
  source                          = "terraform-google-modules/bigquery/google"
  version                         = "10.1.1"
  access                          = var.access
  dataset_id                      = var.dataset_id
  dataset_labels                  = var.dataset_labels
  dataset_name                    = var.dataset_name
  default_partition_expiration_ms = var.default_partition_expiration_ms
  default_table_expiration_ms     = var.default_table_expiration_ms
  delete_contents_on_destroy      = var.delete_contents_on_destroy
  deletion_protection             = var.deletion_protection
  description                     = var.description
  encryption_key                  = var.encryption_key
  external_tables                 = var.external_tables
  location                        = var.location
  materialized_views              = var.materialized_views
  max_time_travel_hours           = var.max_time_travel_hours
  project_id                      = var.project_id
  resource_tags                   = var.resource_tags
  routines                        = var.routines
  storage_billing_model           = var.storage_billing_model
  tables                          = var.tables
  views                           = var.views
}
