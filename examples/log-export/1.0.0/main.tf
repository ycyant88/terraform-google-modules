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
  version                = "1.0.0"
  bigquery               = var.bigquery
  billing_id             = var.billing_id
  filter                 = var.filter
  folder                 = var.folder
  include_children       = var.include_children
  name                   = var.name
  org_id                 = var.org_id
  project                = var.project
  pubsub                 = var.pubsub
  storage                = var.storage
  unique_writer_identity = var.unique_writer_identity
}
