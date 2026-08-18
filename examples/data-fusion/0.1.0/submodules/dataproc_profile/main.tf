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

module "data-fusion_dataproc_profile" {
  source                  = "terraform-google-modules/data-fusion/google//modules/dataproc_profile"
  version                 = "0.1.0"
  account_key             = var.account_key
  encryption_key_name     = var.encryption_key_name
  extra_properties        = var.extra_properties
  gcs_bucket              = var.gcs_bucket
  image_version           = var.image_version
  label                   = var.label
  master                  = var.master
  name                    = var.name
  namespace               = var.namespace
  network                 = var.network
  network_host_project_id = var.network_host_project_id
  project                 = var.project
  region                  = var.region
  service_account         = var.service_account
  subnet                  = var.subnet
  worker                  = var.worker
}
