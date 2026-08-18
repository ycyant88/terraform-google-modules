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

module "iam_service_accounts_iam" {
  source               = "terraform-google-modules/iam/google//modules/service_accounts_iam"
  version              = "3.0.0"
  bindings             = var.bindings
  bindings_num         = var.bindings_num
  mode                 = var.mode
  project              = var.project
  service_accounts     = var.service_accounts
  service_accounts_num = var.service_accounts_num
}
