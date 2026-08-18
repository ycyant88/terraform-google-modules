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

module "composer_airflow_pool" {
  source            = "terraform-google-modules/composer/google//modules/airflow_pool"
  version           = "3.2.0"
  composer_env_name = var.composer_env_name
  description       = var.description
  pool_name         = var.pool_name
  project_id        = var.project_id
  region            = var.region
  slot_count        = var.slot_count
}
