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

module "memorystore_memcache" {
  source             = "terraform-google-modules/memorystore/google//modules/memcache"
  version            = "5.1.0"
  authorized_network = var.authorized_network
  cpu_count          = var.cpu_count
  display_name       = var.display_name
  enable_apis        = var.enable_apis
  labels             = var.labels
  maintenance_policy = var.maintenance_policy
  memory_size_mb     = var.memory_size_mb
  name               = var.name
  node_count         = var.node_count
  params             = var.params
  project            = var.project
  region             = var.region
  reserved_ip_range  = var.reserved_ip_range
  zones              = var.zones
}
