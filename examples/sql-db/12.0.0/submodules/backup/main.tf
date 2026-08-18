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
  source                 = "terraform-google-modules/sql-db/google//modules/backup"
  version                = "12.0.0"
  backup_retention_time  = var.backup_retention_time
  backup_schedule        = var.backup_schedule
  compress_export        = var.compress_export
  enable_export_backup   = var.enable_export_backup
  enable_internal_backup = var.enable_internal_backup
  export_databases       = var.export_databases
  export_schedule        = var.export_schedule
  export_uri             = var.export_uri
  project_id             = var.project_id
  region                 = var.region
  scheduler_timezone     = var.scheduler_timezone
  service_account        = var.service_account
  sql_instance           = var.sql_instance
}
