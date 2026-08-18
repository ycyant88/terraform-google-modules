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

module "composer" {
  source                  = "terraform-google-modules/composer/google"
  version                 = "6.4.0"
  composer_env_name       = var.composer_env_name
  enable_private_endpoint = var.enable_private_endpoint
  network                 = var.network
  project_id              = var.project_id
  region                  = var.region
  subnetwork              = var.subnetwork
  zone                    = var.zone
}
