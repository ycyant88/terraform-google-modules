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
  source       = "terraform-google-modules/iam/google//modules/folders_iam"
  version      = "3.0.0"
  bindings     = var.bindings
  bindings_num = var.bindings_num
  folders      = var.folders
  folders_num  = var.folders_num
  mode         = var.mode
}
