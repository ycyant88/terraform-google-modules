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
  version                  = "5.0.1"
  client_access_config     = var.client_access_config
  client_boot_image        = var.client_boot_image
  client_config_module     = var.client_config_module
  client_gcs_module        = var.client_gcs_module
  client_iam_module        = var.client_iam_module
  client_instance_metadata = var.client_instance_metadata
  client_private           = var.client_private
  client_region            = var.client_region
  client_ssh_allow_ranges  = var.client_ssh_allow_ranges
  client_tags              = var.client_tags
  client_type              = var.client_type
  forseti_home             = var.forseti_home
  forseti_repo_url         = var.forseti_repo_url
  forseti_version          = var.forseti_version
  network                  = var.network
  network_project          = var.network_project
  project_id               = var.project_id
  services                 = var.services
  subnetwork               = var.subnetwork
  suffix                   = var.suffix
}
