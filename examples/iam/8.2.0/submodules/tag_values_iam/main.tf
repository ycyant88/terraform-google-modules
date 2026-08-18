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

module "iam_tag_values_iam" {
  source     = "terraform-google-modules/iam/google//modules/tag_values_iam"
  version    = "8.2.0"
  bindings   = var.bindings
  mode       = var.mode
  tag_values = var.tag_values
}
