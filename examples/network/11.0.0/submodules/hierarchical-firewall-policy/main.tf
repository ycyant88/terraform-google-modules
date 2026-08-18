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

module "network_hierarchical-firewall-policy" {
  source         = "terraform-google-modules/network/google//modules/hierarchical-firewall-policy"
  version        = "11.0.0"
  description    = var.description
  parent_node    = var.parent_node
  policy_name    = var.policy_name
  rules          = var.rules
  target_folders = var.target_folders
  target_org     = var.target_org
}
