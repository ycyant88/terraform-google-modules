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

module "slo_slo-pipeline" {
  source                              = "terraform-google-modules/slo/google//modules/slo-pipeline"
  version                             = "2.0.0"
  dataset_create                      = var.dataset_create
  dataset_default_table_expiration_ms = var.dataset_default_table_expiration_ms
  exporters                           = var.exporters
  extra_files                         = var.extra_files
  function_bucket_name                = var.function_bucket_name
  function_environment_variables      = var.function_environment_variables
  function_memory                     = var.function_memory
  function_name                       = var.function_name
  function_source_directory           = var.function_source_directory
  function_timeout                    = var.function_timeout
  grant_iam_roles                     = var.grant_iam_roles
  labels                              = var.labels
  project_id                          = var.project_id
  pubsub_topic_name                   = var.pubsub_topic_name
  region                              = var.region
  service_account_email               = var.service_account_email
  service_account_name                = var.service_account_name
  slo_generator_version               = var.slo_generator_version
  storage_bucket_class                = var.storage_bucket_class
  storage_bucket_location             = var.storage_bucket_location
  use_custom_service_account          = var.use_custom_service_account
  vpc_connector                       = var.vpc_connector
  vpc_connector_egress_settings       = var.vpc_connector_egress_settings
}
