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

module "slo_slo" {
  source                                = "terraform-google-modules/slo/google//modules/slo"
  version                               = "0.3.0"
  bucket_force_destroy                  = var.bucket_force_destroy
  config                                = var.config
  config_bucket                         = var.config_bucket
  environment_variables                 = var.environment_variables
  error_budget_policy                   = var.error_budget_policy
  extra_files                           = var.extra_files
  function_environment_variables        = var.function_environment_variables
  function_labels                       = var.function_labels
  function_source_archive_bucket_labels = var.function_source_archive_bucket_labels
  function_source_directory             = var.function_source_directory
  function_timeout_s                    = var.function_timeout_s
  grant_iam_roles                       = var.grant_iam_roles
  labels                                = var.labels
  message_data                          = var.message_data
  project_id                            = var.project_id
  region                                = var.region
  schedule                              = var.schedule
  service_account_email                 = var.service_account_email
  service_account_name                  = var.service_account_name
  slo_generator_version                 = var.slo_generator_version
  time_zone                             = var.time_zone
  use_custom_service_account            = var.use_custom_service_account
  vpc_connector                         = var.vpc_connector
  vpc_connector_egress_settings         = var.vpc_connector_egress_settings
}
