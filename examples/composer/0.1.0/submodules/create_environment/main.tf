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

module "composer_create_environment" {
  source                   = "terraform-google-modules/composer/google//modules/create_environment"
  version                  = "0.1.0"
  composer_env_name        = var.composer_env_name
  composer_service_account = var.composer_service_account
  ip_cidr_range            = var.ip_cidr_range
  machine_type             = var.machine_type
  network_name             = var.network_name
  node_count               = var.node_count
  project_id               = var.project_id
  region                   = var.region
  subnet_name              = var.subnet_name
  zone                     = var.zone
}
