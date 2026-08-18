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
  source                   = "terraform-google-modules/forseti/google"
  version                  = "1.0.0"
  bucket_cai_lifecycle_age = var.bucket_cai_lifecycle_age
  bucket_cai_location      = var.bucket_cai_location
  client_boot_image        = var.client_boot_image
  client_region            = var.client_region
  client_type              = var.client_type
  cloudsql_db_name         = var.cloudsql_db_name
  cloudsql_db_port         = var.cloudsql_db_port
  cloudsql_proxy_arch      = var.cloudsql_proxy_arch
  cloudsql_region          = var.cloudsql_region
  cloudsql_type            = var.cloudsql_type
  domain                   = var.domain
  enable_cai_bucket        = var.enable_cai_bucket
  enable_write             = var.enable_write
  folder_id                = var.folder_id
  forseti_email_recipient  = var.forseti_email_recipient
  forseti_email_sender     = var.forseti_email_sender
  forseti_home             = var.forseti_home
  forseti_repo_url         = var.forseti_repo_url
  forseti_run_frequency    = var.forseti_run_frequency
  forseti_version          = var.forseti_version
  gsuite_admin_email       = var.gsuite_admin_email
  network                  = var.network
  network_project          = var.network_project
  org_id                   = var.org_id
  project_id               = var.project_id
  sendgrid_api_key         = var.sendgrid_api_key
  server_boot_image        = var.server_boot_image
  server_region            = var.server_region
  server_type              = var.server_type
  storage_bucket_location  = var.storage_bucket_location
  subnetwork               = var.subnetwork
}
