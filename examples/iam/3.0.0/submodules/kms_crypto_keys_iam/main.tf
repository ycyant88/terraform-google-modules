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
  source              = "terraform-google-modules/iam/google//modules/kms_crypto_keys_iam"
  version             = "3.0.0"
  bindings            = var.bindings
  bindings_num        = var.bindings_num
  kms_crypto_keys     = var.kms_crypto_keys
  kms_crypto_keys_num = var.kms_crypto_keys_num
  mode                = var.mode
}
