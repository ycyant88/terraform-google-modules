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
  version                 = "15.2.1"
  alternative_location_id = var.alternative_location_id
  auth_enabled            = var.auth_enabled
  authorized_network      = var.authorized_network
  connect_mode            = var.connect_mode
  customer_managed_key    = var.customer_managed_key
  display_name            = var.display_name
  enable_apis             = var.enable_apis
  labels                  = var.labels
  location_id             = var.location_id
  maintenance_policy      = var.maintenance_policy
  memory_size_gb          = var.memory_size_gb
  name                    = var.name
  persistence_config      = var.persistence_config
  project_id              = var.project_id
  read_replicas_mode      = var.read_replicas_mode
  redis_configs           = var.redis_configs
  redis_version           = var.redis_version
  region                  = var.region
  replica_count           = var.replica_count
  reserved_ip_range       = var.reserved_ip_range
  secondary_ip_range      = var.secondary_ip_range
  tier                    = var.tier
  transit_encryption_mode = var.transit_encryption_mode
}
