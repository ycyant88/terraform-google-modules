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
  source                               = "terraform-google-modules/scheduled-function/google//modules/project_cleanup"
  version                              = "4.3.0"
  billing_account                      = var.billing_account
  clean_up_billing_sinks               = var.clean_up_billing_sinks
  clean_up_org_level_cai_feeds         = var.clean_up_org_level_cai_feeds
  clean_up_org_level_scc_notifications = var.clean_up_org_level_scc_notifications
  clean_up_org_level_tag_keys          = var.clean_up_org_level_tag_keys
  function_timeout_s                   = var.function_timeout_s
  job_schedule                         = var.job_schedule
  list_billing_sinks_page_size         = var.list_billing_sinks_page_size
  list_scc_notifications_page_size     = var.list_scc_notifications_page_size
  max_project_age_in_hours             = var.max_project_age_in_hours
  organization_id                      = var.organization_id
  project_id                           = var.project_id
  region                               = var.region
  target_billing_sinks                 = var.target_billing_sinks
  target_excluded_labels               = var.target_excluded_labels
  target_excluded_tagkeys              = var.target_excluded_tagkeys
  target_folder_id                     = var.target_folder_id
  target_included_feeds                = var.target_included_feeds
  target_included_labels               = var.target_included_labels
  target_included_scc_notifications    = var.target_included_scc_notifications
  target_tag_name                      = var.target_tag_name
  target_tag_value                     = var.target_tag_value
  topic_name                           = var.topic_name
}
