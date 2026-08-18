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

module "project-factory_svpc_service_project" {
  source                                  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version                                 = "18.3.0"
  activate_api_identities                 = var.activate_api_identities
  activate_apis                           = var.activate_apis
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
  create_project_sa                       = var.create_project_sa
  default_network_tier                    = var.default_network_tier
  default_service_account                 = var.default_service_account
  deletion_policy                         = var.deletion_policy
  disable_dependent_services              = var.disable_dependent_services
  disable_services_on_destroy             = var.disable_services_on_destroy
  domain                                  = var.domain
  folder_id                               = var.folder_id
  grant_network_role                      = var.grant_network_role
  grant_services_security_admin_role      = var.grant_services_security_admin_role
  group_name                              = var.group_name
  group_role                              = var.group_role
  labels                                  = var.labels
  lien                                    = var.lien
  name                                    = var.name
  org_id                                  = var.org_id
  principal_set                           = var.principal_set
  project_id                              = var.project_id
  project_sa_name                         = var.project_sa_name
  random_project_id                       = var.random_project_id
  sa_role                                 = var.sa_role
  shared_vpc                              = var.shared_vpc
  shared_vpc_subnets                      = var.shared_vpc_subnets
  universe_prefix                         = var.universe_prefix
  usage_bucket_name                       = var.usage_bucket_name
  usage_bucket_prefix                     = var.usage_bucket_prefix
}
