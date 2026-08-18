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

module "sql-db_restore" {
  source           = "terraform-google-modules/sql-db/google//modules/restore"
  version          = "21.0.0"
  import_databases = var.import_databases
  import_uri       = var.import_uri
  project_id       = var.project_id
  region           = var.region
  service_account  = var.service_account
  sql_instance     = var.sql_instance
}
