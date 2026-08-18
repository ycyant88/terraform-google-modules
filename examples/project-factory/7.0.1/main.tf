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

module "project-factory" {
  source                      = "terraform-google-modules/project-factory/google"
  version                     = "7.0.1"
  activate_apis               = var.activate_apis
  auto_create_network         = var.auto_create_network
  billing_account             = var.billing_account
  bucket_location             = var.bucket_location
  bucket_name                 = var.bucket_name
  bucket_project              = var.bucket_project
  budget_alert_pubsub_topic   = var.budget_alert_pubsub_topic
  budget_alert_spent_percents = var.budget_alert_spent_percents
  budget_amount               = var.budget_amount
  credentials_path            = var.credentials_path
  default_service_account     = var.default_service_account
  disable_dependent_services  = var.disable_dependent_services
  disable_services_on_destroy = var.disable_services_on_destroy
  domain                      = var.domain
  folder_id                   = var.folder_id
  group_name                  = var.group_name
  group_role                  = var.group_role
  impersonate_service_account = var.impersonate_service_account
  labels                      = var.labels
  lien                        = var.lien
  name                        = var.name
  org_id                      = var.org_id
  pip_executable_path         = var.pip_executable_path
  project_id                  = var.project_id
  python_interpreter_path     = var.python_interpreter_path
  random_project_id           = var.random_project_id
  sa_role                     = var.sa_role
  shared_vpc                  = var.shared_vpc
  shared_vpc_subnets          = var.shared_vpc_subnets
  usage_bucket_name           = var.usage_bucket_name
  usage_bucket_prefix         = var.usage_bucket_prefix
}
