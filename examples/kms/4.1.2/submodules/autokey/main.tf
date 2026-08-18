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
  version               = "4.1.2"
  autokey_folder_number = var.autokey_folder_number
  key_project_id        = var.key_project_id
}
