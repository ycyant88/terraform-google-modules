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

module "memorystore_valkey" {
  source                        = "terraform-google-modules/memorystore/google//modules/valkey"
  version                       = "15.2.2"
  authorization_mode            = var.authorization_mode
  automated_backup_config       = var.automated_backup_config
  deletion_protection_enabled   = var.deletion_protection_enabled
  enable_apis                   = var.enable_apis
  engine_configs                = var.engine_configs
  engine_version                = var.engine_version
  gcs_source                    = var.gcs_source
  instance_id                   = var.instance_id
  labels                        = var.labels
  location                      = var.location
  managed_backup_source         = var.managed_backup_source
  mode                          = var.mode
  network                       = var.network
  network_project               = var.network_project
  node_type                     = var.node_type
  persistence_config            = var.persistence_config
  project_id                    = var.project_id
  replica_count                 = var.replica_count
  service_connection_policies   = var.service_connection_policies
  shard_count                   = var.shard_count
  transit_encryption_mode       = var.transit_encryption_mode
  weekly_maintenance_window     = var.weekly_maintenance_window
  zone_distribution_config_mode = var.zone_distribution_config_mode
  zone_distribution_config_zone = var.zone_distribution_config_zone
}
