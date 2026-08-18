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

module "forseti_server_iam" {
  source                  = "terraform-google-modules/forseti/google//modules/server_iam"
  version                 = "5.1.0"
  cloud_profiler_enabled  = var.cloud_profiler_enabled
  cscc_violations_enabled = var.cscc_violations_enabled
  enable_write            = var.enable_write
  folder_id               = var.folder_id
  org_id                  = var.org_id
  project_id              = var.project_id
  suffix                  = var.suffix
}
