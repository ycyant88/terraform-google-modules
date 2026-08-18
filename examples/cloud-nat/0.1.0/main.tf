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
  source                             = "terraform-google-modules/cloud-nat/google"
  version                            = "0.1.0"
  icmp_idle_timeout_sec              = var.icmp_idle_timeout_sec
  min_ports_per_vm                   = var.min_ports_per_vm
  name                               = var.name
  nat_ip_allocate_option             = var.nat_ip_allocate_option
  nat_ips                            = var.nat_ips
  project_id                         = var.project_id
  region                             = var.region
  router                             = var.router
  source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
  tcp_established_idle_timeout_sec   = var.tcp_established_idle_timeout_sec
  tcp_transitory_idle_timeout_sec    = var.tcp_transitory_idle_timeout_sec
  udp_idle_timeout_sec               = var.udp_idle_timeout_sec
}
