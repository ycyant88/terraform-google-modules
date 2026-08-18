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

module "cloud-dns_dns_response_policy" {
  source             = "terraform-google-modules/cloud-dns/google//modules/dns_response_policy"
  version            = "5.1.1"
  description        = var.description
  network_self_links = var.network_self_links
  policy_name        = var.policy_name
  project_id         = var.project_id
  rules              = var.rules
}
