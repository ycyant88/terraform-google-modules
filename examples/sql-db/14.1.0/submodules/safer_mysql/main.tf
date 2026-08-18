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

module "sql-db_safer_mysql" {
  source                           = "terraform-google-modules/sql-db/google//modules/safer_mysql"
  version                          = "14.1.0"
  activation_policy                = var.activation_policy
  additional_databases             = var.additional_databases
  additional_users                 = var.additional_users
  allocated_ip_range               = var.allocated_ip_range
  assign_public_ip                 = var.assign_public_ip
  availability_type                = var.availability_type
  backup_configuration             = var.backup_configuration
  create_timeout                   = var.create_timeout
  database_flags                   = var.database_flags
  database_version                 = var.database_version
  db_charset                       = var.db_charset
  db_collation                     = var.db_collation
  db_name                          = var.db_name
  delete_timeout                   = var.delete_timeout
  deletion_protection              = var.deletion_protection
  deletion_protection_enabled      = var.deletion_protection_enabled
  deny_maintenance_period          = var.deny_maintenance_period
  disk_autoresize                  = var.disk_autoresize
  disk_autoresize_limit            = var.disk_autoresize_limit
  disk_size                        = var.disk_size
  disk_type                        = var.disk_type
  encryption_key_name              = var.encryption_key_name
  follow_gae_application           = var.follow_gae_application
  insights_config                  = var.insights_config
  maintenance_window_day           = var.maintenance_window_day
  maintenance_window_hour          = var.maintenance_window_hour
  maintenance_window_update_track  = var.maintenance_window_update_track
  module_depends_on                = var.module_depends_on
  name                             = var.name
  pricing_plan                     = var.pricing_plan
  project_id                       = var.project_id
  random_instance_name             = var.random_instance_name
  read_replica_deletion_protection = var.read_replica_deletion_protection
  read_replica_name_suffix         = var.read_replica_name_suffix
  read_replicas                    = var.read_replicas
  region                           = var.region
  secondary_zone                   = var.secondary_zone
  tier                             = var.tier
  update_timeout                   = var.update_timeout
  user_labels                      = var.user_labels
  user_name                        = var.user_name
  user_password                    = var.user_password
  vpc_network                      = var.vpc_network
  zone                             = var.zone
}
