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
  source         = "terraform-google-modules/log-export/google//modules/logbucket"
  version        = "7.4.0"
  location       = var.location
  name           = var.name
  project_id     = var.project_id
  retention_days = var.retention_days
}
