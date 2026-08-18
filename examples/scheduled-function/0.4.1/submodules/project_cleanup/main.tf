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

module "scheduled-function_project_cleanup" {
  source                   = "terraform-google-modules/scheduled-function/google//modules/project_cleanup"
  version                  = "0.4.1"
  max_project_age_in_hours = var.max_project_age_in_hours
  organization_id          = var.organization_id
  project_id               = var.project_id
  region                   = var.region
  target_tag_name          = var.target_tag_name
  target_tag_value         = var.target_tag_value
}
