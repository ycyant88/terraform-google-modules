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
  version                                     = "1.2.0"
  bucket_name                                 = var.bucket_name
  function_available_memory_mb                = var.function_available_memory_mb
  function_description                        = var.function_description
  function_entry_point                        = var.function_entry_point
  function_environment_variables              = var.function_environment_variables
  function_event_trigger_failure_policy_retry = var.function_event_trigger_failure_policy_retry
  function_labels                             = var.function_labels
  function_name                               = var.function_name
  function_runtime                            = var.function_runtime
  function_service_account_email              = var.function_service_account_email
  function_source_archive_bucket_labels       = var.function_source_archive_bucket_labels
  function_source_directory                   = var.function_source_directory
  function_timeout_s                          = var.function_timeout_s
  job_description                             = var.job_description
  job_name                                    = var.job_name
  job_schedule                                = var.job_schedule
  message_data                                = var.message_data
  project_id                                  = var.project_id
  region                                      = var.region
  time_zone                                   = var.time_zone
  topic_name                                  = var.topic_name
}
