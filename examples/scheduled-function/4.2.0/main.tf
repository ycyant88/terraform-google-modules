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

module "scheduled-function" {
  source                                      = "terraform-google-modules/scheduled-function/google"
  version                                     = "4.2.0"
  bucket_force_destroy                        = var.bucket_force_destroy
  bucket_name                                 = var.bucket_name
  create_bucket                               = var.create_bucket
  function_available_memory_mb                = var.function_available_memory_mb
  function_description                        = var.function_description
  function_docker_registry                    = var.function_docker_registry
  function_docker_repository                  = var.function_docker_repository
  function_entry_point                        = var.function_entry_point
  function_environment_variables              = var.function_environment_variables
  function_event_trigger_failure_policy_retry = var.function_event_trigger_failure_policy_retry
  function_kms_key_name                       = var.function_kms_key_name
  function_labels                             = var.function_labels
  function_max_instances                      = var.function_max_instances
  function_name                               = var.function_name
  function_runtime                            = var.function_runtime
  function_secret_environment_variables       = var.function_secret_environment_variables
  function_service_account_email              = var.function_service_account_email
  function_source_archive_bucket_labels       = var.function_source_archive_bucket_labels
  function_source_dependent_files             = var.function_source_dependent_files
  function_source_directory                   = var.function_source_directory
  function_timeout_s                          = var.function_timeout_s
  grant_token_creator                         = var.grant_token_creator
  ingress_settings                            = var.ingress_settings
  job_description                             = var.job_description
  job_name                                    = var.job_name
  job_schedule                                = var.job_schedule
  message_data                                = var.message_data
  project_id                                  = var.project_id
  region                                      = var.region
  scheduler_job                               = var.scheduler_job
  time_zone                                   = var.time_zone
  topic_kms_key_name                          = var.topic_kms_key_name
  topic_labels                                = var.topic_labels
  topic_name                                  = var.topic_name
  vpc_connector                               = var.vpc_connector
  vpc_connector_egress_settings               = var.vpc_connector_egress_settings
}
