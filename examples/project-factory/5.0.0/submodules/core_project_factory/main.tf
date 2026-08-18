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

module "project-factory_core_project_factory" {
  source                      = "terraform-google-modules/project-factory/google//modules/core_project_factory"
  version                     = "5.0.0"
  activate_apis               = var.activate_apis
  auto_create_network         = var.auto_create_network
  billing_account             = var.billing_account
  bucket_location             = var.bucket_location
  bucket_name                 = var.bucket_name
  bucket_project              = var.bucket_project
  credentials_path            = var.credentials_path
  default_service_account     = var.default_service_account
  disable_dependent_services  = var.disable_dependent_services
  disable_services_on_destroy = var.disable_services_on_destroy
  folder_id                   = var.folder_id
  group_email                 = var.group_email
  group_role                  = var.group_role
  impersonate_service_account = var.impersonate_service_account
  labels                      = var.labels
  lien                        = var.lien
  manage_group                = var.manage_group
  name                        = var.name
  org_id                      = var.org_id
  project_id                  = var.project_id
  random_project_id           = var.random_project_id
  sa_role                     = var.sa_role
  shared_vpc                  = var.shared_vpc
  shared_vpc_enabled          = var.shared_vpc_enabled
  shared_vpc_subnets          = var.shared_vpc_subnets
  usage_bucket_name           = var.usage_bucket_name
  usage_bucket_prefix         = var.usage_bucket_prefix
}
