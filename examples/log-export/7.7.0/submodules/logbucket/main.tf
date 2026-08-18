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

module "log-export_logbucket" {
  source                        = "terraform-google-modules/log-export/google//modules/logbucket"
  version                       = "7.7.0"
  enable_analytics              = var.enable_analytics
  grant_write_permission_on_bkt = var.grant_write_permission_on_bkt
  linked_dataset_description    = var.linked_dataset_description
  linked_dataset_id             = var.linked_dataset_id
  location                      = var.location
  log_sink_writer_identity      = var.log_sink_writer_identity
  name                          = var.name
  project_id                    = var.project_id
  retention_days                = var.retention_days
}
