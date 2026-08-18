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

module "vpc-service-controls_access_level" {
  source                           = "terraform-google-modules/vpc-service-controls/google//modules/access_level"
  version                          = "6.0.0"
  allowed_device_management_levels = var.allowed_device_management_levels
  allowed_encryption_statuses      = var.allowed_encryption_statuses
  combining_function               = var.combining_function
  description                      = var.description
  ip_subnetworks                   = var.ip_subnetworks
  members                          = var.members
  minimum_version                  = var.minimum_version
  name                             = var.name
  negate                           = var.negate
  os_type                          = var.os_type
  policy                           = var.policy
  regions                          = var.regions
  require_corp_owned               = var.require_corp_owned
  require_screen_lock              = var.require_screen_lock
  required_access_levels           = var.required_access_levels
  vpc_network_sources              = var.vpc_network_sources
}
