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

module "iam_billing_accounts_iam" {
  source              = "terraform-google-modules/iam/google//modules/billing_accounts_iam"
  version             = "8.2.0"
  billing_account_ids = var.billing_account_ids
  bindings            = var.bindings
  mode                = var.mode
}
