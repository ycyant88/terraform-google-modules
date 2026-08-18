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

module "forseti_client" {
  source                   = "terraform-google-modules/forseti/google//modules/client"
  version                  = "1.3.0"
  client_boot_image        = var.client_boot_image
  client_instance_metadata = var.client_instance_metadata
  client_region            = var.client_region
  client_ssh_allow_ranges  = var.client_ssh_allow_ranges
  client_type              = var.client_type
  forseti_home             = var.forseti_home
  forseti_repo_url         = var.forseti_repo_url
  forseti_version          = var.forseti_version
  network                  = var.network
  network_project          = var.network_project
  project_id               = var.project_id
  server_address           = var.server_address
  services                 = var.services
  storage_bucket_location  = var.storage_bucket_location
  subnetwork               = var.subnetwork
  suffix                   = var.suffix
}
