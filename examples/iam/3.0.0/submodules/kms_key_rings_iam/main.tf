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
  source            = "terraform-google-modules/iam/google//modules/kms_key_rings_iam"
  version           = "3.0.0"
  bindings          = var.bindings
  bindings_num      = var.bindings_num
  kms_key_rings     = var.kms_key_rings
  kms_key_rings_num = var.kms_key_rings_num
  mode              = var.mode
}
