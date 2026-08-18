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

module "lb" {
  source           = "terraform-google-modules/lb/google"
  version          = "1.0.2"
  firewall_project = var.firewall_project
  name             = var.name
  network          = var.network
  project          = var.project
  region           = var.region
  service_port     = var.service_port
  session_affinity = var.session_affinity
  target_tags      = var.target_tags
}
