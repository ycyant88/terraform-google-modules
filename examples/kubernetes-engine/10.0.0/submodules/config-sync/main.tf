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

module "kubernetes-engine_config-sync" {
  source               = "terraform-google-modules/kubernetes-engine/google//modules/config-sync"
  version              = "10.0.0"
  cluster_endpoint     = var.cluster_endpoint
  cluster_name         = var.cluster_name
  create_ssh_key       = var.create_ssh_key
  location             = var.location
  operator_path        = var.operator_path
  policy_dir           = var.policy_dir
  project_id           = var.project_id
  secret_type          = var.secret_type
  skip_gcloud_download = var.skip_gcloud_download
  ssh_auth_key         = var.ssh_auth_key
  sync_branch          = var.sync_branch
  sync_repo            = var.sync_repo
}
