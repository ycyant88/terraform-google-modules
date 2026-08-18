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

module "iam_kms_crypto_keys_iam" {
  source               = "terraform-google-modules/iam/google//modules/kms_crypto_keys_iam"
  version              = "7.4.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  kms_crypto_keys      = var.kms_crypto_keys
  mode                 = var.mode
}
