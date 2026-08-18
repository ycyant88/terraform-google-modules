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

module "memorystore_redis-cluster" {
  source                        = "terraform-google-modules/memorystore/google//modules/redis-cluster"
  version                       = "13.1.0"
  authorization_mode            = var.authorization_mode
  deletion_protection_enabled   = var.deletion_protection_enabled
  enable_apis                   = var.enable_apis
  name                          = var.name
  network                       = var.network
  node_type                     = var.node_type
  project_id                    = var.project_id
  redis_configs                 = var.redis_configs
  region                        = var.region
  replica_count                 = var.replica_count
  service_connection_policies   = var.service_connection_policies
  shard_count                   = var.shard_count
  transit_encryption_mode       = var.transit_encryption_mode
  zone_distribution_config_mode = var.zone_distribution_config_mode
  zone_distribution_config_zone = var.zone_distribution_config_zone
}
