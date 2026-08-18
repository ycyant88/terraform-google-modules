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

module "log-export_project" {
  source                   = "terraform-google-modules/log-export/google//modules/project"
  version                  = "9.0.0"
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
}
