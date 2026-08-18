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

module "log-export" {
  source                 = "terraform-google-modules/log-export/google"
  version                = "7.4.3"
  bigquery_options       = var.bigquery_options
  destination_uri        = var.destination_uri
  exclusions             = var.exclusions
  filter                 = var.filter
  include_children       = var.include_children
  log_sink_name          = var.log_sink_name
  parent_resource_id     = var.parent_resource_id
  parent_resource_type   = var.parent_resource_type
  unique_writer_identity = var.unique_writer_identity
}
