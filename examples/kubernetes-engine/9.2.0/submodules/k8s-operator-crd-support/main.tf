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

module "kubernetes-engine_k8s-operator-crd-support" {
  source                        = "terraform-google-modules/kubernetes-engine/google//modules/k8s-operator-crd-support"
  version                       = "9.2.0"
  cluster_endpoint              = var.cluster_endpoint
  cluster_name                  = var.cluster_name
  create_ssh_key                = var.create_ssh_key
  enable_policy_controller      = var.enable_policy_controller
  install_template_library      = var.install_template_library
  location                      = var.location
  operator_cr_template_path     = var.operator_cr_template_path
  operator_credential_name      = var.operator_credential_name
  operator_credential_namespace = var.operator_credential_namespace
  operator_latest_manifest_url  = var.operator_latest_manifest_url
  operator_path                 = var.operator_path
  policy_dir                    = var.policy_dir
  project_id                    = var.project_id
  secret_type                   = var.secret_type
  skip_gcloud_download          = var.skip_gcloud_download
  ssh_auth_key                  = var.ssh_auth_key
  sync_branch                   = var.sync_branch
  sync_repo                     = var.sync_repo
}
