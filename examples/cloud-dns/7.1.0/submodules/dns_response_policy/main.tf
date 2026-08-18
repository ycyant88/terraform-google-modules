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
  version            = "7.1.0"
  description        = var.description
  gke_clusters_list  = var.gke_clusters_list
  network_self_links = var.network_self_links
  policy_name        = var.policy_name
  project_id         = var.project_id
  rules              = var.rules
}
