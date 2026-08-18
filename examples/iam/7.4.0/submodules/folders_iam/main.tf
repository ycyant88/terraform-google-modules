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

module "iam_folders_iam" {
  source               = "terraform-google-modules/iam/google//modules/folders_iam"
  version              = "7.4.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  folders              = var.folders
  mode                 = var.mode
}
