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

module "memorystore" {
  source                  = "terraform-google-modules/memorystore/google"
  version                 = "1.2.0"
  alternative_location_id = var.alternative_location_id
  authorized_network      = var.authorized_network
  connect_mode            = var.connect_mode
  display_name            = var.display_name
  enable_apis             = var.enable_apis
  labels                  = var.labels
  location_id             = var.location_id
  memory_size_gb          = var.memory_size_gb
  name                    = var.name
  project                 = var.project
  redis_version           = var.redis_version
  region                  = var.region
  reserved_ip_range       = var.reserved_ip_range
  tier                    = var.tier
}
