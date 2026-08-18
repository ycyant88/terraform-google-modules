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

module "sql-db" {
  source                      = "terraform-google-modules/sql-db/google"
  version                     = "1.1.2"
  activation_policy           = var.activation_policy
  authorized_gae_applications = var.authorized_gae_applications
  availability_type           = var.availability_type
  backup_configuration        = var.backup_configuration
  database_flags              = var.database_flags
  database_version            = var.database_version
  db_charset                  = var.db_charset
  db_collation                = var.db_collation
  db_name                     = var.db_name
  disk_autoresize             = var.disk_autoresize
  disk_size                   = var.disk_size
  disk_type                   = var.disk_type
  ip_configuration            = var.ip_configuration
  location_preference         = var.location_preference
  maintenance_window          = var.maintenance_window
  master_instance_name        = var.master_instance_name
  name                        = var.name
  pricing_plan                = var.pricing_plan
  project                     = var.project
  region                      = var.region
  replica_configuration       = var.replica_configuration
  replication_type            = var.replication_type
  tier                        = var.tier
  user_host                   = var.user_host
  user_name                   = var.user_name
  user_password               = var.user_password
}
