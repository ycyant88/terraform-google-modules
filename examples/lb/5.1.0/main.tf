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
  source                  = "terraform-google-modules/lb/google"
  version                 = "5.1.0"
  allowed_ips             = var.allowed_ips
  disable_health_check    = var.disable_health_check
  firewall_project        = var.firewall_project
  health_check            = var.health_check
  ip_address              = var.ip_address
  ip_protocol             = var.ip_protocol
  labels                  = var.labels
  name                    = var.name
  network                 = var.network
  project                 = var.project
  region                  = var.region
  service_port            = var.service_port
  session_affinity        = var.session_affinity
  target_service_accounts = var.target_service_accounts
  target_tags             = var.target_tags
}
