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

module "bigquery_data_warehouse" {
  source                         = "terraform-google-modules/bigquery/google//modules/data_warehouse"
  version                        = "8.0.0"
  create_ignore_service_accounts = var.create_ignore_service_accounts
  dataform_region                = var.dataform_region
  deletion_protection            = var.deletion_protection
  enable_apis                    = var.enable_apis
  force_destroy                  = var.force_destroy
  labels                         = var.labels
  project_id                     = var.project_id
  region                         = var.region
  text_generation_model_name     = var.text_generation_model_name
}
