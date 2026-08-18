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

module "log-export_bq-log-alerting" {
  source               = "terraform-google-modules/log-export/google//modules/bq-log-alerting"
  version              = "11.0.0"
  bigquery_location    = var.bigquery_location
  dry_run              = var.dry_run
  function_memory      = var.function_memory
  function_region      = var.function_region
  function_timeout     = var.function_timeout
  job_schedule         = var.job_schedule
  logging_project      = var.logging_project
  org_id               = var.org_id
  source_name          = var.source_name
  time_window_quantity = var.time_window_quantity
  time_window_unit     = var.time_window_unit
}
