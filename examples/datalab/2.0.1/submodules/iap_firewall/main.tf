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

module "datalab_iap_firewall" {
  source               = "terraform-google-modules/datalab/google//modules/iap_firewall"
  version              = "2.0.1"
  create_rule          = var.create_rule
  firewall_description = var.firewall_description
  network_name         = var.network_name
  ports                = var.ports
  project_id           = var.project_id
  target_tags          = var.target_tags
}
