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

module "data-fusion" {
  source                      = "terraform-google-modules/data-fusion/google"
  version                     = "1.0.0"
  data_fusion_service_account = var.data_fusion_service_account
  dataproc_subnet             = var.dataproc_subnet
  description                 = var.description
  labels                      = var.labels
  name                        = var.name
  network                     = var.network
  options                     = var.options
  project                     = var.project
  region                      = var.region
  type                        = var.type
}
