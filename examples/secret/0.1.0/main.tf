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

module "secret" {
  source                = "terraform-google-modules/secret/google"
  version               = "0.1.0"
  application_name      = var.application_name
  credentials_file_path = var.credentials_file_path
  env                   = var.env
  secret                = var.secret
  shared                = var.shared
}
