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

module "sql-db_mssql" {
  source                          = "terraform-google-modules/sql-db/google//modules/mssql"
  version                         = "26.2.2"
  activation_policy               = var.activation_policy
  active_directory_config         = var.active_directory_config
  additional_databases            = var.additional_databases
  additional_users                = var.additional_users
  availability_type               = var.availability_type
  backup_configuration            = var.backup_configuration
  connector_enforcement           = var.connector_enforcement
  create_timeout                  = var.create_timeout
  data_cache_enabled              = var.data_cache_enabled
  database_flags                  = var.database_flags
  database_version                = var.database_version
  db_charset                      = var.db_charset
  db_collation                    = var.db_collation
  db_name                         = var.db_name
  delete_timeout                  = var.delete_timeout
  deletion_protection             = var.deletion_protection
  deletion_protection_enabled     = var.deletion_protection_enabled
  deny_maintenance_period         = var.deny_maintenance_period
  disk_autoresize                 = var.disk_autoresize
  disk_autoresize_limit           = var.disk_autoresize_limit
  disk_size                       = var.disk_size
  disk_type                       = var.disk_type
  edition                         = var.edition
  enable_dataplex_integration     = var.enable_dataplex_integration
  enable_default_db               = var.enable_default_db
  enable_default_user             = var.enable_default_user
  encryption_key_name             = var.encryption_key_name
  follow_gae_application          = var.follow_gae_application
  insights_config                 = var.insights_config
  instance_type                   = var.instance_type
  ip_configuration                = var.ip_configuration
  maintenance_version             = var.maintenance_version
  maintenance_window_day          = var.maintenance_window_day
  maintenance_window_hour         = var.maintenance_window_hour
  maintenance_window_update_track = var.maintenance_window_update_track
  master_instance_name            = var.master_instance_name
  module_depends_on               = var.module_depends_on
  name                            = var.name
  pricing_plan                    = var.pricing_plan
  project_id                      = var.project_id
  random_instance_name            = var.random_instance_name
  region                          = var.region
  retain_backups_on_delete        = var.retain_backups_on_delete
  root_password                   = var.root_password
  secondary_zone                  = var.secondary_zone
  sql_server_audit_config         = var.sql_server_audit_config
  tier                            = var.tier
  time_zone                       = var.time_zone
  update_timeout                  = var.update_timeout
  user_labels                     = var.user_labels
  user_name                       = var.user_name
  user_password                   = var.user_password
  zone                            = var.zone
}
