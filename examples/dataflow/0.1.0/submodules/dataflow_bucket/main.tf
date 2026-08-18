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

module "dataflow_dataflow_bucket" {
  source     = "terraform-google-modules/dataflow/google//modules/dataflow_bucket"
  version    = "0.1.0"
  name       = var.name
  project_id = var.project_id
  region     = var.region
}
