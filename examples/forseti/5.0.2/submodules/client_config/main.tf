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

module "forseti_client_config" {
  source            = "terraform-google-modules/forseti/google//modules/client_config"
  version           = "5.0.2"
  client_gcs_module = var.client_gcs_module
  forseti_home      = var.forseti_home
  server_address    = var.server_address
}
