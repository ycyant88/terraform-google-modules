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

module "forseti" {
  source                       = "terraform-google-modules/forseti/google"
  version                      = "0.1.0"
  cloud_sql_region             = var.cloud_sql_region
  credentials_file_path        = var.credentials_file_path
  download_forseti             = var.download_forseti
  forseti_repo_branch          = var.forseti_repo_branch
  forseti_repo_url             = var.forseti_repo_url
  gcs_location                 = var.gcs_location
  gsuite_admin_email           = var.gsuite_admin_email
  notification_recipient_email = var.notification_recipient_email
  project_id                   = var.project_id
  sendgrid_api_key             = var.sendgrid_api_key
}
