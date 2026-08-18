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

module "gcloud_kubectl-fleet-wrapper" {
  source                            = "terraform-google-modules/gcloud/google//modules/kubectl-fleet-wrapper"
  version                           = "3.3.0"
  additional_components             = var.additional_components
  create_cmd_triggers               = var.create_cmd_triggers
  enabled                           = var.enabled
  gcloud_sdk_version                = var.gcloud_sdk_version
  impersonate_service_account       = var.impersonate_service_account
  kubectl_create_command            = var.kubectl_create_command
  kubectl_destroy_command           = var.kubectl_destroy_command
  membership_location               = var.membership_location
  membership_name                   = var.membership_name
  membership_project_id             = var.membership_project_id
  module_depends_on                 = var.module_depends_on
  service_account_key_file          = var.service_account_key_file
  skip_download                     = var.skip_download
  upgrade                           = var.upgrade
  use_tf_google_credentials_env_var = var.use_tf_google_credentials_env_var
}
