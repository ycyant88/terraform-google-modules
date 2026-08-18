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

module "iam_bigquery_datasets_iam" {
  source            = "terraform-google-modules/iam/google//modules/bigquery_datasets_iam"
  version           = "8.0.0"
  bigquery_datasets = var.bigquery_datasets
  bindings          = var.bindings
  mode              = var.mode
  project           = var.project
}
