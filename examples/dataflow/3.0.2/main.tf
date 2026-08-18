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

module "dataflow" {
  source  = "terraform-google-modules/dataflow/google"
  version = "3.0.2"
}
