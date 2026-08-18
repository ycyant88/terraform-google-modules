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
  source            = "terraform-google-modules/cloud-router/google//modules/interconnect_attachment"
  version           = "0.3.0"
  admin_enabled     = var.admin_enabled
  bandwidth         = var.bandwidth
  candidate_subnets = var.candidate_subnets
  description       = var.description
  interconnect      = var.interconnect
  interface         = var.interface
  name              = var.name
  peer              = var.peer
  project           = var.project
  region            = var.region
  router            = var.router
  type              = var.type
  vlan_tag8021q     = var.vlan_tag8021q
}
