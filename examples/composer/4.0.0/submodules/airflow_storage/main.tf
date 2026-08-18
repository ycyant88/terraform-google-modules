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

module "composer_airflow_storage" {
  source           = "terraform-google-modules/composer/google//modules/airflow_storage"
  version          = "4.0.0"
  destination_path = var.destination_path
  environment      = var.environment
  location         = var.location
  project_id       = var.project_id
  source_path      = var.source_path
  type             = var.type
}
