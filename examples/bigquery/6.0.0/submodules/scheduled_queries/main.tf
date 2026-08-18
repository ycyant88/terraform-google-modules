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

module "bigquery_scheduled_queries" {
  source     = "terraform-google-modules/bigquery/google//modules/scheduled_queries"
  version    = "6.0.0"
  project_id = var.project_id
  queries    = var.queries
}
