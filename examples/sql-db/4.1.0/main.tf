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

module "sql-db" {
  source  = "terraform-google-modules/sql-db/google"
  version = "4.1.0"
}
