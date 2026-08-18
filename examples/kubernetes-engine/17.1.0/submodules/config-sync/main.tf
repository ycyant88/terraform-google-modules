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
  version              = "17.1.0"
  cluster_endpoint     = var.cluster_endpoint
  cluster_name         = var.cluster_name
  create_ssh_key       = var.create_ssh_key
  enable_multi_repo    = var.enable_multi_repo
  hierarchy_controller = var.hierarchy_controller
  location             = var.location
  operator_path        = var.operator_path
  policy_dir           = var.policy_dir
  project_id           = var.project_id
  secret_type          = var.secret_type
  source_format        = var.source_format
  ssh_auth_key         = var.ssh_auth_key
  sync_branch          = var.sync_branch
  sync_repo            = var.sync_repo
  sync_revision        = var.sync_revision
}
