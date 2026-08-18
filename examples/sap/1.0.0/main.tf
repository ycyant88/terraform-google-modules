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

module "sap" {
  source  = "terraform-google-modules/sap/google"
  version = "1.0.0"
}
