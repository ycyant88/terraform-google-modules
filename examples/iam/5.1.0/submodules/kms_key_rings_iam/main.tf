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

module "iam_kms_key_rings_iam" {
  source        = "terraform-google-modules/iam/google//modules/kms_key_rings_iam"
  version       = "5.1.0"
  bindings      = var.bindings
  kms_key_rings = var.kms_key_rings
  mode          = var.mode
}
