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

module "bigquery_authorization" {
  source              = "terraform-google-modules/bigquery/google//modules/authorization"
  version             = "10.0.1"
  authorized_datasets = var.authorized_datasets
  authorized_routines = var.authorized_routines
  authorized_views    = var.authorized_views
  dataset_id          = var.dataset_id
  project_id          = var.project_id
  roles               = var.roles
}
