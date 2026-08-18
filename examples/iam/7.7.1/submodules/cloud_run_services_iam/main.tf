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

module "iam_cloud_run_services_iam" {
  source             = "terraform-google-modules/iam/google//modules/cloud_run_services_iam"
  version            = "7.7.1"
  bindings           = var.bindings
  cloud_run_services = var.cloud_run_services
  location           = var.location
  mode               = var.mode
  project            = var.project
}
