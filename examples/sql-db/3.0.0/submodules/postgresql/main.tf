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

module "sql-db_postgresql" {
  source                                       = "terraform-google-modules/sql-db/google//modules/postgresql"
  version                                      = "3.0.0"
  activation_policy                            = var.activation_policy
  additional_databases                         = var.additional_databases
  additional_users                             = var.additional_users
  authorized_gae_applications                  = var.authorized_gae_applications
  availability_type                            = var.availability_type
  backup_configuration                         = var.backup_configuration
  create_timeout                               = var.create_timeout
  database_flags                               = var.database_flags
  database_version                             = var.database_version
  db_charset                                   = var.db_charset
  db_collation                                 = var.db_collation
  db_name                                      = var.db_name
  delete_timeout                               = var.delete_timeout
  disk_autoresize                              = var.disk_autoresize
  disk_size                                    = var.disk_size
  disk_type                                    = var.disk_type
  ip_configuration                             = var.ip_configuration
  maintenance_window_day                       = var.maintenance_window_day
  maintenance_window_hour                      = var.maintenance_window_hour
  maintenance_window_update_track              = var.maintenance_window_update_track
  module_depends_on                            = var.module_depends_on
  name                                         = var.name
  pricing_plan                                 = var.pricing_plan
  project_id                                   = var.project_id
  read_replica_activation_policy               = var.read_replica_activation_policy
  read_replica_availability_type               = var.read_replica_availability_type
  read_replica_configuration                   = var.read_replica_configuration
  read_replica_crash_safe_replication          = var.read_replica_crash_safe_replication
  read_replica_database_flags                  = var.read_replica_database_flags
  read_replica_disk_autoresize                 = var.read_replica_disk_autoresize
  read_replica_disk_size                       = var.read_replica_disk_size
  read_replica_disk_type                       = var.read_replica_disk_type
  read_replica_ip_configuration                = var.read_replica_ip_configuration
  read_replica_maintenance_window_day          = var.read_replica_maintenance_window_day
  read_replica_maintenance_window_hour         = var.read_replica_maintenance_window_hour
  read_replica_maintenance_window_update_track = var.read_replica_maintenance_window_update_track
  read_replica_name_suffix                     = var.read_replica_name_suffix
  read_replica_pricing_plan                    = var.read_replica_pricing_plan
  read_replica_replication_type                = var.read_replica_replication_type
  read_replica_size                            = var.read_replica_size
  read_replica_tier                            = var.read_replica_tier
  read_replica_user_labels                     = var.read_replica_user_labels
  read_replica_zones                           = var.read_replica_zones
  region                                       = var.region
  tier                                         = var.tier
  update_timeout                               = var.update_timeout
  user_labels                                  = var.user_labels
  user_name                                    = var.user_name
  user_password                                = var.user_password
  zone                                         = var.zone
}
