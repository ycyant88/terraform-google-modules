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

module "iam" {
  source  = "terraform-google-modules/iam/google"
  version = "7.7.0"
}
