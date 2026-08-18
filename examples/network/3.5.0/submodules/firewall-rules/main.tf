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

module "network_firewall-rules" {
  source       = "terraform-google-modules/network/google//modules/firewall-rules"
  version      = "3.5.0"
  network_name = var.network_name
  project_id   = var.project_id
  rules        = var.rules
}
