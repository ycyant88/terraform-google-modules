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

module "gsuite-export" {
  source                  = "terraform-google-modules/gsuite-export/google"
  version                 = "2.0.1"
  admin_user              = var.admin_user
  api                     = var.api
  applications            = var.applications
  export_filter           = var.export_filter
  frequency               = var.frequency
  gsuite_exporter_version = var.gsuite_exporter_version
  machine_image           = var.machine_image
  machine_name            = var.machine_name
  machine_network         = var.machine_network
  machine_project         = var.machine_project
  machine_type            = var.machine_type
  machine_zone            = var.machine_zone
  project_id              = var.project_id
  service_account         = var.service_account
}
