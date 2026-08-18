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

module "cloud-router_interconnect_attachment" {
  source                   = "terraform-google-modules/cloud-router/google//modules/interconnect_attachment"
  version                  = "8.3.0"
  admin_enabled            = var.admin_enabled
  bandwidth                = var.bandwidth
  candidate_subnets        = var.candidate_subnets
  create_interface         = var.create_interface
  description              = var.description
  edge_availability_domain = var.edge_availability_domain
  encryption               = var.encryption
  interconnect             = var.interconnect
  interface                = var.interface
  ipsec_internal_addresses = var.ipsec_internal_addresses
  mtu                      = var.mtu
  name                     = var.name
  peer                     = var.peer
  project                  = var.project
  region                   = var.region
  router                   = var.router
  stack_type               = var.stack_type
  type                     = var.type
  vlan_tag8021q            = var.vlan_tag8021q
}
