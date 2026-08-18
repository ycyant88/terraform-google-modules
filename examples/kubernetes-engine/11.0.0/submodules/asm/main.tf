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

module "kubernetes-engine_asm" {
  source                      = "terraform-google-modules/kubernetes-engine/google//modules/asm"
  version                     = "11.0.0"
  asm_dir                     = var.asm_dir
  asm_version                 = var.asm_version
  cluster_endpoint            = var.cluster_endpoint
  cluster_name                = var.cluster_name
  enable_gke_hub_registration = var.enable_gke_hub_registration
  gcloud_sdk_version          = var.gcloud_sdk_version
  gke_hub_membership_name     = var.gke_hub_membership_name
  gke_hub_sa_name             = var.gke_hub_sa_name
  internal_ip                 = var.internal_ip
  location                    = var.location
  project_id                  = var.project_id
  skip_gcloud_download        = var.skip_gcloud_download
}
