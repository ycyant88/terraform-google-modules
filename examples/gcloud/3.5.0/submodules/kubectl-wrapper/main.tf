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

module "gcloud_kubectl-wrapper" {
  source                            = "terraform-google-modules/gcloud/google//modules/kubectl-wrapper"
  version                           = "3.5.0"
  additional_components             = var.additional_components
  cluster_location                  = var.cluster_location
  cluster_name                      = var.cluster_name
  create_cmd_triggers               = var.create_cmd_triggers
  enabled                           = var.enabled
  gcloud_sdk_version                = var.gcloud_sdk_version
  impersonate_service_account       = var.impersonate_service_account
  internal_ip                       = var.internal_ip
  kubectl_create_command            = var.kubectl_create_command
  kubectl_destroy_command           = var.kubectl_destroy_command
  module_depends_on                 = var.module_depends_on
  project_id                        = var.project_id
  service_account_key_file          = var.service_account_key_file
  skip_download                     = var.skip_download
  upgrade                           = var.upgrade
  use_existing_context              = var.use_existing_context
  use_tf_google_credentials_env_var = var.use_tf_google_credentials_env_var
}
