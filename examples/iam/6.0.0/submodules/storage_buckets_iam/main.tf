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

module "iam_storage_buckets_iam" {
  source          = "terraform-google-modules/iam/google//modules/storage_buckets_iam"
  version         = "6.0.0"
  bindings        = var.bindings
  mode            = var.mode
  storage_buckets = var.storage_buckets
}
