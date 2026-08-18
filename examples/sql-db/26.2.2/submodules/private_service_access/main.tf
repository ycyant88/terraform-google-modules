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

module "sql-db_private_service_access" {
  source          = "terraform-google-modules/sql-db/google//modules/private_service_access"
  version         = "26.2.2"
  address         = var.address
  deletion_policy = var.deletion_policy
  description     = var.description
  ip_version      = var.ip_version
  labels          = var.labels
  prefix_length   = var.prefix_length
  project_id      = var.project_id
  vpc_network     = var.vpc_network
}
