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

module "network_network" {
  source                                    = "terraform-google-modules/network/google//modules/network"
  version                                   = "18.2.0"
  bgp_always_compare_med                    = var.bgp_always_compare_med
  bgp_best_path_selection_mode              = var.bgp_best_path_selection_mode
  bgp_inter_region_cost                     = var.bgp_inter_region_cost
  description                               = var.description
  dns_config                                = var.dns_config
  enable_all_vpc_internal_traffic           = var.enable_all_vpc_internal_traffic
  enable_gcr_dns                            = var.enable_gcr_dns
  enable_ipv6_ula                           = var.enable_ipv6_ula
  firewall_enable_logging                   = var.firewall_enable_logging
  internal_ipv6_range                       = var.internal_ipv6_range
  mtu                                       = var.mtu
  nat_config                                = var.nat_config
  ncc_hub_config                            = var.ncc_hub_config
  network_firewall_policy_enforcement_order = var.network_firewall_policy_enforcement_order
  network_profile                           = var.network_profile
  pkg_dev_domain                            = var.pkg_dev_domain
  private_service_cidr                      = var.private_service_cidr
  private_service_connect_ip                = var.private_service_connect_ip
  project_id                                = var.project_id
  resource_code                             = var.resource_code
  routing_mode                              = var.routing_mode
  secondary_ranges                          = var.secondary_ranges
  shared_vpc_host                           = var.shared_vpc_host
  subnets                                   = var.subnets
  universe_domain                           = var.universe_domain
  vpc_name                                  = var.vpc_name
  windows_activation_enabled                = var.windows_activation_enabled
}
