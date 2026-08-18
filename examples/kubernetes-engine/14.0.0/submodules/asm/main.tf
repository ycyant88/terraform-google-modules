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
  source                   = "terraform-google-modules/kubernetes-engine/google//modules/asm"
  version                  = "14.0.0"
  asm_dir                  = var.asm_dir
  asm_version              = var.asm_version
  cluster_endpoint         = var.cluster_endpoint
  cluster_name             = var.cluster_name
  gcloud_sdk_version       = var.gcloud_sdk_version
  location                 = var.location
  project_id               = var.project_id
  service_account_key_file = var.service_account_key_file
}
