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

module "forseti_client_iam" {
  source                 = "terraform-google-modules/forseti/google//modules/client_iam"
  version                = "5.2.2"
  client_enabled         = var.client_enabled
  client_service_account = var.client_service_account
  project_id             = var.project_id
  suffix                 = var.suffix
}
