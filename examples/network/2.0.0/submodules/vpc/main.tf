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

module "network_vpc" {
  source                  = "terraform-google-modules/network/google//modules/vpc"
  version                 = "2.0.0"
  auto_create_subnetworks = var.auto_create_subnetworks
  description             = var.description
  network_name            = var.network_name
  project_id              = var.project_id
  routing_mode            = var.routing_mode
  shared_vpc_host         = var.shared_vpc_host
}
