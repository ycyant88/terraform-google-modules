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
  version          = "1.0.3"
  backends         = var.backends
  health_port      = var.health_port
  ip_address       = var.ip_address
  ip_protocol      = var.ip_protocol
  name             = var.name
  network          = var.network
  ports            = var.ports
  project          = var.project
  region           = var.region
  session_affinity = var.session_affinity
  source_tags      = var.source_tags
  target_tags      = var.target_tags
}
