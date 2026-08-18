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

module "cloud-nat" {
  source                              = "terraform-google-modules/cloud-nat/google"
  version                             = "2.1.0"
  create_router                       = var.create_router
  enable_endpoint_independent_mapping = var.enable_endpoint_independent_mapping
  icmp_idle_timeout_sec               = var.icmp_idle_timeout_sec
  log_config_enable                   = var.log_config_enable
  log_config_filter                   = var.log_config_filter
  min_ports_per_vm                    = var.min_ports_per_vm
  name                                = var.name
  nat_ip_allocate_option              = var.nat_ip_allocate_option
  nat_ips                             = var.nat_ips
  network                             = var.network
  project_id                          = var.project_id
  region                              = var.region
  router                              = var.router
  router_asn                          = var.router_asn
  source_subnetwork_ip_ranges_to_nat  = var.source_subnetwork_ip_ranges_to_nat
  subnetworks                         = var.subnetworks
  tcp_established_idle_timeout_sec    = var.tcp_established_idle_timeout_sec
  tcp_transitory_idle_timeout_sec     = var.tcp_transitory_idle_timeout_sec
  udp_idle_timeout_sec                = var.udp_idle_timeout_sec
}
