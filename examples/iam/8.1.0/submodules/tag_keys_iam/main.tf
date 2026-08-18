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

module "iam_tag_keys_iam" {
  source   = "terraform-google-modules/iam/google//modules/tag_keys_iam"
  version  = "8.1.0"
  bindings = var.bindings
  mode     = var.mode
  tag_keys = var.tag_keys
}
