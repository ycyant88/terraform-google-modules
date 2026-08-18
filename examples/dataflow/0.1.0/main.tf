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

module "dataflow" {
  source                = "terraform-google-modules/dataflow/google"
  version               = "0.1.0"
  max_workers           = var.max_workers
  name                  = var.name
  on_delete             = var.on_delete
  parameters            = var.parameters
  project_id            = var.project_id
  region                = var.region
  service_account_email = var.service_account_email
  temp_gcs_location     = var.temp_gcs_location
  template_gcs_path     = var.template_gcs_path
  zone                  = var.zone
}
