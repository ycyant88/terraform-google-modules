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

module "project-factory_gsuite_enabled" {
  source                                  = "terraform-google-modules/project-factory/google//modules/gsuite_enabled"
  version                                 = "14.0.0"
  activate_apis                           = var.activate_apis
  api_sa_group                            = var.api_sa_group
  auto_create_network                     = var.auto_create_network
  billing_account                         = var.billing_account
  bucket_location                         = var.bucket_location
  bucket_name                             = var.bucket_name
  bucket_project                          = var.bucket_project
  bucket_versioning                       = var.bucket_versioning
  budget_alert_pubsub_topic               = var.budget_alert_pubsub_topic
  budget_alert_spent_percents             = var.budget_alert_spent_percents
  budget_amount                           = var.budget_amount
  budget_monitoring_notification_channels = var.budget_monitoring_notification_channels
  consumer_quotas                         = var.consumer_quotas
  create_group                            = var.create_group
  create_project_sa                       = var.create_project_sa
  default_network_tier                    = var.default_network_tier
  default_service_account                 = var.default_service_account
  disable_dependent_services              = var.disable_dependent_services
  disable_services_on_destroy             = var.disable_services_on_destroy
  domain                                  = var.domain
  enable_shared_vpc_host_project          = var.enable_shared_vpc_host_project
  enable_shared_vpc_service_project       = var.enable_shared_vpc_service_project
  folder_id                               = var.folder_id
  group_name                              = var.group_name
  group_role                              = var.group_role
  labels                                  = var.labels
  lien                                    = var.lien
  name                                    = var.name
  org_id                                  = var.org_id
  project_id                              = var.project_id
  project_sa_name                         = var.project_sa_name
  random_project_id                       = var.random_project_id
  sa_group                                = var.sa_group
  sa_role                                 = var.sa_role
  shared_vpc                              = var.shared_vpc
  shared_vpc_subnets                      = var.shared_vpc_subnets
  usage_bucket_name                       = var.usage_bucket_name
  usage_bucket_prefix                     = var.usage_bucket_prefix
}
