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

module "event-function_event-folder-log-entry" {
  source           = "terraform-google-modules/event-function/google//modules/event-folder-log-entry"
  version          = "1.5.0"
  filter           = var.filter
  folder_id        = var.folder_id
  include_children = var.include_children
  labels           = var.labels
  name             = var.name
  project_id       = var.project_id
}
