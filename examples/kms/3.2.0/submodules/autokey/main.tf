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

module "kms_autokey" {
  source                = "terraform-google-modules/kms/google//modules/autokey"
  version               = "3.2.0"
  autokey_folder_number = var.autokey_folder_number
  autokey_handles       = var.autokey_handles
  project_id            = var.project_id
}
