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

module "bigquery_udf" {
  source     = "terraform-google-modules/bigquery/google//modules/udf"
  version    = "6.0.0"
  add_udfs   = var.add_udfs
  dataset_id = var.dataset_id
  project_id = var.project_id
}
