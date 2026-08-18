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

module "composer_airflow_connection" {
  source            = "terraform-google-modules/composer/google//modules/airflow_connection"
  version           = "2.3.0"
  composer_env_name = var.composer_env_name
  extra             = var.extra
  host              = var.host
  id                = var.id
  login             = var.login
  password          = var.password
  port              = var.port
  project_id        = var.project_id
  region            = var.region
  schema            = var.schema
  type              = var.type
  uri               = var.uri
}
