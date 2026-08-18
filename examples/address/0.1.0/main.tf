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

module "address" {
  source             = "terraform-google-modules/address/google"
  version            = "0.1.0"
  address_type       = var.address_type
  addresses          = var.addresses
  dns_domain         = var.dns_domain
  dns_managed_zone   = var.dns_managed_zone
  dns_project        = var.dns_project
  dns_record_type    = var.dns_record_type
  dns_reverse_zone   = var.dns_reverse_zone
  dns_short_names    = var.dns_short_names
  dns_ttl            = var.dns_ttl
  enable_cloud_dns   = var.enable_cloud_dns
  enable_reverse_dns = var.enable_reverse_dns
  global             = var.global
  names              = var.names
  subnetwork         = var.subnetwork
}
