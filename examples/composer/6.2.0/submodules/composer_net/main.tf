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

module "composer_composer_net" {
  source                                 = "terraform-google-modules/composer/google//modules/composer_net"
  version                                = "6.2.0"
  cloud_composer_network_ipv4_cidr_block = var.cloud_composer_network_ipv4_cidr_block
  composer_env_name                      = var.composer_env_name
  composer_sa_name                       = var.composer_sa_name
  dns_name                               = var.dns_name
  dns_zone_name                          = var.dns_zone_name
  gke_pods_services_ip_ranges            = var.gke_pods_services_ip_ranges
  gke_subnet_ip_range                    = var.gke_subnet_ip_range
  master_ipv4_cidr                       = var.master_ipv4_cidr
  network                                = var.network
  network_project_id                     = var.network_project_id
  region                                 = var.region
  service_project_id                     = var.service_project_id
  subnetwork                             = var.subnetwork
}
