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

module "vpc-service-controls_regular_service_perimeter" {
  source                          = "terraform-google-modules/vpc-service-controls/google//modules/regular_service_perimeter"
  version                         = "7.1.1"
  access_levels                   = var.access_levels
  access_levels_dry_run           = var.access_levels_dry_run
  description                     = var.description
  egress_policies                 = var.egress_policies
  egress_policies_dry_run         = var.egress_policies_dry_run
  ingress_policies                = var.ingress_policies
  ingress_policies_dry_run        = var.ingress_policies_dry_run
  perimeter_name                  = var.perimeter_name
  policy                          = var.policy
  resource_keys                   = var.resource_keys
  resource_keys_dry_run           = var.resource_keys_dry_run
  resources                       = var.resources
  resources_dry_run               = var.resources_dry_run
  restricted_services             = var.restricted_services
  restricted_services_dry_run     = var.restricted_services_dry_run
  shared_resources                = var.shared_resources
  vpc_accessible_services         = var.vpc_accessible_services
  vpc_accessible_services_dry_run = var.vpc_accessible_services_dry_run
}
