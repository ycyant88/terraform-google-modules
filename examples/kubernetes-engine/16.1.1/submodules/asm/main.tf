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
  version                     = "16.1.1"
  asm_git_tag                 = var.asm_git_tag
  asm_version                 = var.asm_version
  ca                          = var.ca
  ca_certs                    = var.ca_certs
  cluster_endpoint            = var.cluster_endpoint
  cluster_name                = var.cluster_name
  custom_overlays             = var.custom_overlays
  enable_all                  = var.enable_all
  enable_cluster_labels       = var.enable_cluster_labels
  enable_cluster_roles        = var.enable_cluster_roles
  enable_gcp_apis             = var.enable_gcp_apis
  enable_gcp_components       = var.enable_gcp_components
  enable_gcp_iam_roles        = var.enable_gcp_iam_roles
  enable_namespace_creation   = var.enable_namespace_creation
  enable_registration         = var.enable_registration
  gcloud_sdk_version          = var.gcloud_sdk_version
  iam_member                  = var.iam_member
  impersonate_service_account = var.impersonate_service_account
  key_file                    = var.key_file
  location                    = var.location
  managed_control_plane       = var.managed_control_plane
  mode                        = var.mode
  options                     = var.options
  outdir                      = var.outdir
  project_id                  = var.project_id
  revision_name               = var.revision_name
  service_account             = var.service_account
  service_account_key_file    = var.service_account_key_file
  skip_validation             = var.skip_validation
}
