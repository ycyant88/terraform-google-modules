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
  version                            = "4.0.0"
  available_memory_mb                = var.available_memory_mb
  bucket_force_destroy               = var.bucket_force_destroy
  bucket_labels                      = var.bucket_labels
  bucket_name                        = var.bucket_name
  build_environment_variables        = var.build_environment_variables
  create_bucket                      = var.create_bucket
  description                        = var.description
  docker_registry                    = var.docker_registry
  docker_repository                  = var.docker_repository
  entry_point                        = var.entry_point
  environment_variables              = var.environment_variables
  event_trigger                      = var.event_trigger
  event_trigger_failure_policy_retry = var.event_trigger_failure_policy_retry
  files_to_exclude_in_source_dir     = var.files_to_exclude_in_source_dir
  ingress_settings                   = var.ingress_settings
  kms_key_name                       = var.kms_key_name
  labels                             = var.labels
  log_bucket                         = var.log_bucket
  log_object_prefix                  = var.log_object_prefix
  max_instances                      = var.max_instances
  name                               = var.name
  project_id                         = var.project_id
  region                             = var.region
  runtime                            = var.runtime
  secret_environment_variables       = var.secret_environment_variables
  service_account_email              = var.service_account_email
  source_dependent_files             = var.source_dependent_files
  source_directory                   = var.source_directory
  timeout_s                          = var.timeout_s
  trigger_http                       = var.trigger_http
  vpc_connector                      = var.vpc_connector
  vpc_connector_egress_settings      = var.vpc_connector_egress_settings
}
