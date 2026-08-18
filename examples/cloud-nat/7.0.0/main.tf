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
  version                             = "7.0.0"
  create_router                       = var.create_router
  drain_nat_ips                       = var.drain_nat_ips
  enable_dynamic_port_allocation      = var.enable_dynamic_port_allocation
  enable_endpoint_independent_mapping = var.enable_endpoint_independent_mapping
  icmp_idle_timeout_sec               = var.icmp_idle_timeout_sec
  log_config_enable                   = var.log_config_enable
  log_config_filter                   = var.log_config_filter
  max_ports_per_vm                    = var.max_ports_per_vm
  min_ports_per_vm                    = var.min_ports_per_vm
  name                                = var.name
  nat_ips                             = var.nat_ips
  network                             = var.network
  project_id                          = var.project_id
  region                              = var.region
  router                              = var.router
  router_asn                          = var.router_asn
  router_keepalive_interval           = var.router_keepalive_interval
  rules                               = var.rules
  source_subnetwork_ip_ranges_to_nat  = var.source_subnetwork_ip_ranges_to_nat
  subnetworks                         = var.subnetworks
  tcp_established_idle_timeout_sec    = var.tcp_established_idle_timeout_sec
  tcp_time_wait_timeout_sec           = var.tcp_time_wait_timeout_sec
  tcp_transitory_idle_timeout_sec     = var.tcp_transitory_idle_timeout_sec
  udp_idle_timeout_sec                = var.udp_idle_timeout_sec
}
