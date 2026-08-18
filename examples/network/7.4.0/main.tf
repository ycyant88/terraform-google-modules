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

module "network" {
  source                                    = "terraform-google-modules/network/google"
  version                                   = "7.4.0"
  auto_create_subnetworks                   = var.auto_create_subnetworks
  delete_default_internet_gateway_routes    = var.delete_default_internet_gateway_routes
  description                               = var.description
  egress_rules                              = var.egress_rules
  enable_ipv6_ula                           = var.enable_ipv6_ula
  firewall_rules                            = var.firewall_rules
  ingress_rules                             = var.ingress_rules
  internal_ipv6_range                       = var.internal_ipv6_range
  mtu                                       = var.mtu
  network_firewall_policy_enforcement_order = var.network_firewall_policy_enforcement_order
  network_name                              = var.network_name
  project_id                                = var.project_id
  routes                                    = var.routes
  routing_mode                              = var.routing_mode
  secondary_ranges                          = var.secondary_ranges
  shared_vpc_host                           = var.shared_vpc_host
  subnets                                   = var.subnets
}
