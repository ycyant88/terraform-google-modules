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

module "kubernetes-engine_acm" {
  source                   = "terraform-google-modules/kubernetes-engine/google//modules/acm"
  version                  = "12.2.0"
  cluster_endpoint         = var.cluster_endpoint
  cluster_name             = var.cluster_name
  create_ssh_key           = var.create_ssh_key
  enable_log_denies        = var.enable_log_denies
  enable_policy_controller = var.enable_policy_controller
  hierarchy_controller     = var.hierarchy_controller
  install_template_library = var.install_template_library
  location                 = var.location
  operator_path            = var.operator_path
  policy_dir               = var.policy_dir
  project_id               = var.project_id
  secret_type              = var.secret_type
  service_account_key_file = var.service_account_key_file
  source_format            = var.source_format
  ssh_auth_key             = var.ssh_auth_key
  sync_branch              = var.sync_branch
  sync_repo                = var.sync_repo
}
