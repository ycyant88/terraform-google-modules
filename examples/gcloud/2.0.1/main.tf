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

module "gcloud" {
  source                            = "terraform-google-modules/gcloud/google"
  version                           = "2.0.1"
  additional_components             = var.additional_components
  create_cmd_body                   = var.create_cmd_body
  create_cmd_entrypoint             = var.create_cmd_entrypoint
  create_cmd_triggers               = var.create_cmd_triggers
  destroy_cmd_body                  = var.destroy_cmd_body
  destroy_cmd_entrypoint            = var.destroy_cmd_entrypoint
  enabled                           = var.enabled
  gcloud_download_url               = var.gcloud_download_url
  gcloud_sdk_version                = var.gcloud_sdk_version
  jq_download_url                   = var.jq_download_url
  jq_version                        = var.jq_version
  module_depends_on                 = var.module_depends_on
  platform                          = var.platform
  service_account_key_file          = var.service_account_key_file
  skip_download                     = var.skip_download
  upgrade                           = var.upgrade
  use_tf_google_credentials_env_var = var.use_tf_google_credentials_env_var
}
