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
  source                      = "terraform-google-modules/scheduled-function/google//modules/project_cleanup"
  version                     = "4.0.1"
  clean_up_org_level_tag_keys = var.clean_up_org_level_tag_keys
  function_timeout_s          = var.function_timeout_s
  job_schedule                = var.job_schedule
  max_project_age_in_hours    = var.max_project_age_in_hours
  organization_id             = var.organization_id
  project_id                  = var.project_id
  region                      = var.region
  target_excluded_labels      = var.target_excluded_labels
  target_excluded_tagkeys     = var.target_excluded_tagkeys
  target_folder_id            = var.target_folder_id
  target_included_labels      = var.target_included_labels
  target_tag_name             = var.target_tag_name
  target_tag_value            = var.target_tag_value
  topic_name                  = var.topic_name
}
