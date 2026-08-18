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

module "cloud-operations" {
  source  = "terraform-google-modules/cloud-operations/google"
  version = "0.1.1"
}
