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

module "project-factory_quota_manager" {
  source          = "terraform-google-modules/project-factory/google//modules/quota_manager"
  version         = "12.0.0"
  consumer_quotas = var.consumer_quotas
  project_id      = var.project_id
}
