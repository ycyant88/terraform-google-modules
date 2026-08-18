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
  source            = "terraform-google-modules/bigquery/google"
  version           = "0.1.0"
  dataset_id        = var.dataset_id
  dataset_labels    = var.dataset_labels
  dataset_name      = var.dataset_name
  description       = var.description
  expiration        = var.expiration
  location          = var.location
  project_id        = var.project_id
  schema_file       = var.schema_file
  table_id          = var.table_id
  table_labels      = var.table_labels
  time_partitioning = var.time_partitioning
}
