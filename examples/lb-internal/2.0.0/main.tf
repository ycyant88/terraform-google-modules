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

module "lb-internal" {
  source           = "terraform-google-modules/lb-internal/google"
  version          = "2.0.0"
  backends         = var.backends
  health_check     = var.health_check
  ip_address       = var.ip_address
  ip_protocol      = var.ip_protocol
  name             = var.name
  network          = var.network
  network_project  = var.network_project
  ports            = var.ports
  project          = var.project
  region           = var.region
  session_affinity = var.session_affinity
  source_tags      = var.source_tags
  subnetwork       = var.subnetwork
  target_tags      = var.target_tags
}
