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

module "iam_secret_manager_iam" {
  source               = "terraform-google-modules/iam/google//modules/secret_manager_iam"
  version              = "7.4.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  mode                 = var.mode
  project              = var.project
  secrets              = var.secrets
}
