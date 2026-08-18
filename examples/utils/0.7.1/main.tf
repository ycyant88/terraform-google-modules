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
  source             = "terraform-google-modules/utils/google"
  version            = "0.7.1"
  additional_regions = var.additional_regions
  region             = var.region
}
