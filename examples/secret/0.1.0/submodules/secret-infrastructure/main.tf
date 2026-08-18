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

module "secret_secret-infrastructure" {
  source                = "terraform-google-modules/secret/google//modules/secret-infrastructure"
  version               = "0.1.0"
  application_list      = var.application_list
  credentials_file_path = var.credentials_file_path
  env_list              = var.env_list
  project_name          = var.project_name
}
