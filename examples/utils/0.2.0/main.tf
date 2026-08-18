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

module "utils" {
  source  = "terraform-google-modules/utils/google"
  version = "0.2.0"
  region  = var.region
}
