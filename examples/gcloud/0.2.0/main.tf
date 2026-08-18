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
  version                           = "0.2.0"
  additional_components             = var.additional_components
  create_cmd_body                   = var.create_cmd_body
  create_cmd_entrypoint             = var.create_cmd_entrypoint
  destroy_cmd_body                  = var.destroy_cmd_body
  destroy_cmd_entrypoint            = var.destroy_cmd_entrypoint
  enabled                           = var.enabled
  platform                          = var.platform
  service_account_key_file          = var.service_account_key_file
  use_tf_google_credentials_env_var = var.use_tf_google_credentials_env_var
}
