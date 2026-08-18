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
  version               = "2.2.0"
  ip_configuration      = var.ip_configuration
  kms_key_name          = var.kms_key_name
  machine_type          = var.machine_type
  max_workers           = var.max_workers
  name                  = var.name
  network_self_link     = var.network_self_link
  on_delete             = var.on_delete
  parameters            = var.parameters
  project_id            = var.project_id
  region                = var.region
  service_account_email = var.service_account_email
  subnetwork_self_link  = var.subnetwork_self_link
  temp_gcs_location     = var.temp_gcs_location
  template_gcs_path     = var.template_gcs_path
  zone                  = var.zone
}
