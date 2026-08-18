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

module "sql-db_backup" {
  source                               = "terraform-google-modules/sql-db/google//modules/backup"
  version                              = "22.0.0"
  backup_monitoring_frequency          = var.backup_monitoring_frequency
  backup_retention_time                = var.backup_retention_time
  backup_runs_list_max_results         = var.backup_runs_list_max_results
  backup_schedule                      = var.backup_schedule
  compress_export                      = var.compress_export
  connector_params_timeout             = var.connector_params_timeout
  create_notification_channel          = var.create_notification_channel
  enable_backup_monitoring             = var.enable_backup_monitoring
  enable_connector_params              = var.enable_connector_params
  enable_export_backup                 = var.enable_export_backup
  enable_export_monitoring             = var.enable_export_monitoring
  enable_internal_backup               = var.enable_internal_backup
  export_databases                     = var.export_databases
  export_monitoring_frequency          = var.export_monitoring_frequency
  export_schedule                      = var.export_schedule
  export_uri                           = var.export_uri
  log_db_name_to_export                = var.log_db_name_to_export
  monitoring_email                     = var.monitoring_email
  notification_channel_name            = var.notification_channel_name
  notification_channels                = var.notification_channels
  project_id                           = var.project_id
  region                               = var.region
  scheduler_timezone                   = var.scheduler_timezone
  service_account                      = var.service_account
  sql_instance                         = var.sql_instance
  sql_instance_replica                 = var.sql_instance_replica
  unique_suffix                        = var.unique_suffix
  use_serverless_export                = var.use_serverless_export
  use_sql_instance_replica_in_exporter = var.use_sql_instance_replica_in_exporter
}
