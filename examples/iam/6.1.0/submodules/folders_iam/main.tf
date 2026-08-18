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
  source   = "terraform-google-modules/iam/google//modules/folders_iam"
  version  = "6.1.0"
  bindings = var.bindings
  folders  = var.folders
  mode     = var.mode
}
