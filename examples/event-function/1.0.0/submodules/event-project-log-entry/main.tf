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

module "event-function_event-project-log-entry" {
  source               = "terraform-google-modules/event-function/google//modules/event-project-log-entry"
  version              = "1.0.0"
  filter               = var.filter
  labels               = var.labels
  name                 = var.name
  parent_resource_type = var.parent_resource_type
  project_id           = var.project_id
}
