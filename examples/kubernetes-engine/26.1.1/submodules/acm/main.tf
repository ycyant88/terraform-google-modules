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
  source                    = "terraform-google-modules/kubernetes-engine/google//modules/acm"
  version                   = "26.1.1"
  cluster_membership_id     = var.cluster_membership_id
  cluster_name              = var.cluster_name
  configmanagement_version  = var.configmanagement_version
  create_metrics_gcp_sa     = var.create_metrics_gcp_sa
  create_ssh_key            = var.create_ssh_key
  enable_config_sync        = var.enable_config_sync
  enable_fleet_feature      = var.enable_fleet_feature
  enable_fleet_registration = var.enable_fleet_registration
  enable_log_denies         = var.enable_log_denies
  enable_policy_controller  = var.enable_policy_controller
  enable_referential_rules  = var.enable_referential_rules
  hierarchy_controller      = var.hierarchy_controller
  https_proxy               = var.https_proxy
  install_template_library  = var.install_template_library
  location                  = var.location
  metrics_gcp_sa_name       = var.metrics_gcp_sa_name
  policy_bundles            = var.policy_bundles
  policy_dir                = var.policy_dir
  project_id                = var.project_id
  secret_type               = var.secret_type
  source_format             = var.source_format
  ssh_auth_key              = var.ssh_auth_key
  sync_branch               = var.sync_branch
  sync_repo                 = var.sync_repo
  sync_revision             = var.sync_revision
}
