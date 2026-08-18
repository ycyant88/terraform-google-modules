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

module "project-factory_budget" {
  source                           = "terraform-google-modules/project-factory/google//modules/budget"
  version                          = "14.2.1"
  alert_pubsub_topic               = var.alert_pubsub_topic
  alert_spend_basis                = var.alert_spend_basis
  alert_spent_percents             = var.alert_spent_percents
  amount                           = var.amount
  billing_account                  = var.billing_account
  calendar_period                  = var.calendar_period
  create_budget                    = var.create_budget
  credit_types_treatment           = var.credit_types_treatment
  custom_period_end_date           = var.custom_period_end_date
  custom_period_start_date         = var.custom_period_start_date
  display_name                     = var.display_name
  labels                           = var.labels
  monitoring_notification_channels = var.monitoring_notification_channels
  projects                         = var.projects
  services                         = var.services
}
