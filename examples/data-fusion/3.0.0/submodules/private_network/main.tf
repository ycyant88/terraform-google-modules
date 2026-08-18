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

module "data-fusion_private_network" {
  source                      = "terraform-google-modules/data-fusion/google//modules/private_network"
  version                     = "3.0.0"
  data_fusion_service_account = var.data_fusion_service_account
  dataproc_cidr               = var.dataproc_cidr
  dataproc_subnet             = var.dataproc_subnet
  instance                    = var.instance
  network_name                = var.network_name
  project_id                  = var.project_id
  region                      = var.region
  tenant_project              = var.tenant_project
}
