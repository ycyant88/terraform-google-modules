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

module "composer_master_authorized_networks" {
  source                     = "terraform-google-modules/composer/google//modules/master_authorized_networks"
  version                    = "6.0.0"
  gke_cluster                = var.gke_cluster
  master_authorized_networks = var.master_authorized_networks
  project_id                 = var.project_id
  zone                       = var.zone
}
