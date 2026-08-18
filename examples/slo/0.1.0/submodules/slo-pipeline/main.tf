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
  version                             = "0.1.0"
  dataset_default_table_expiration_ms = var.dataset_default_table_expiration_ms
  exporters                           = var.exporters
  function_bucket_name                = var.function_bucket_name
  function_memory                     = var.function_memory
  function_name                       = var.function_name
  function_source_directory           = var.function_source_directory
  grant_iam_roles                     = var.grant_iam_roles
  project_id                          = var.project_id
  pubsub_topic_name                   = var.pubsub_topic_name
  region                              = var.region
  service_account_email               = var.service_account_email
  service_account_name                = var.service_account_name
  slo_generator_version               = var.slo_generator_version
  storage_bucket_location             = var.storage_bucket_location
  storage_bucket_storage_class        = var.storage_bucket_storage_class
  use_custom_service_account          = var.use_custom_service_account
}
