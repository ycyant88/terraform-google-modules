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

module "cloud-router" {
  source      = "terraform-google-modules/cloud-router/google"
  version     = "6.0.1"
  bgp         = var.bgp
  description = var.description
  name        = var.name
  nats        = var.nats
  network     = var.network
  project     = var.project
  region      = var.region
}
