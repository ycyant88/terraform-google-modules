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

module "network_network-firewall-policy" {
  source        = "terraform-google-modules/network/google//modules/network-firewall-policy"
  version       = "18.0.0"
  description   = var.description
  policy_name   = var.policy_name
  policy_region = var.policy_region
  policy_type   = var.policy_type
  project_id    = var.project_id
  rules         = var.rules
  target_vpcs   = var.target_vpcs
}
