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
  source                             = "terraform-google-modules/project-factory/google//modules/core_project_factory"
  version                            = "11.3.1"
  activate_api_identities            = var.activate_api_identities
  activate_apis                      = var.activate_apis
  auto_create_network                = var.auto_create_network
  billing_account                    = var.billing_account
  bucket_force_destroy               = var.bucket_force_destroy
  bucket_labels                      = var.bucket_labels
  bucket_location                    = var.bucket_location
  bucket_name                        = var.bucket_name
  bucket_project                     = var.bucket_project
  bucket_ula                         = var.bucket_ula
  bucket_versioning                  = var.bucket_versioning
  create_project_sa                  = var.create_project_sa
  default_network_tier               = var.default_network_tier
  default_service_account            = var.default_service_account
  disable_dependent_services         = var.disable_dependent_services
  disable_services_on_destroy        = var.disable_services_on_destroy
  enable_shared_vpc_host_project     = var.enable_shared_vpc_host_project
  enable_shared_vpc_service_project  = var.enable_shared_vpc_service_project
  folder_id                          = var.folder_id
  group_email                        = var.group_email
  group_role                         = var.group_role
  labels                             = var.labels
  lien                               = var.lien
  manage_group                       = var.manage_group
  name                               = var.name
  org_id                             = var.org_id
  project_id                         = var.project_id
  project_sa_name                    = var.project_sa_name
  random_project_id                  = var.random_project_id
  sa_role                            = var.sa_role
  shared_vpc                         = var.shared_vpc
  shared_vpc_subnets                 = var.shared_vpc_subnets
  usage_bucket_name                  = var.usage_bucket_name
  usage_bucket_prefix                = var.usage_bucket_prefix
  vpc_service_control_attach_enabled = var.vpc_service_control_attach_enabled
  vpc_service_control_perimeter_name = var.vpc_service_control_perimeter_name
}
