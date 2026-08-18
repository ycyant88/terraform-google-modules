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

module "event-function" {
  source                             = "terraform-google-modules/event-function/google"
  version                            = "1.0.0"
  available_memory_mb                = var.available_memory_mb
  bucket_force_destroy               = var.bucket_force_destroy
  bucket_labels                      = var.bucket_labels
  bucket_name                        = var.bucket_name
  description                        = var.description
  entry_point                        = var.entry_point
  environment_variables              = var.environment_variables
  event_trigger                      = var.event_trigger
  event_trigger_failure_policy_retry = var.event_trigger_failure_policy_retry
  labels                             = var.labels
  name                               = var.name
  project_id                         = var.project_id
  region                             = var.region
  runtime                            = var.runtime
  service_account_email              = var.service_account_email
  source_directory                   = var.source_directory
  timeout_s                          = var.timeout_s
}
