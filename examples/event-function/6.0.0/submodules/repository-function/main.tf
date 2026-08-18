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

module "event-function_repository-function" {
  source                             = "terraform-google-modules/event-function/google//modules/repository-function"
  version                            = "6.0.0"
  available_memory_mb                = var.available_memory_mb
  description                        = var.description
  entry_point                        = var.entry_point
  environment_variables              = var.environment_variables
  event_trigger                      = var.event_trigger
  event_trigger_failure_policy_retry = var.event_trigger_failure_policy_retry
  ingress_settings                   = var.ingress_settings
  labels                             = var.labels
  max_instances                      = var.max_instances
  name                               = var.name
  project_id                         = var.project_id
  region                             = var.region
  runtime                            = var.runtime
  service_account_email              = var.service_account_email
  source_repository_url              = var.source_repository_url
  timeout_s                          = var.timeout_s
  timeouts                           = var.timeouts
  trigger_http                       = var.trigger_http
  vpc_connector                      = var.vpc_connector
  vpc_connector_egress_settings      = var.vpc_connector_egress_settings
}
