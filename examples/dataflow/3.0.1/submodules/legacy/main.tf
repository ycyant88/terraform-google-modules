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

module "dataflow_legacy" {
  source                       = "terraform-google-modules/dataflow/google//modules/legacy"
  version                      = "3.0.1"
  additional_experiments       = var.additional_experiments
  enable_streaming_engine      = var.enable_streaming_engine
  kms_key_name                 = var.kms_key_name
  labels                       = var.labels
  machine_type                 = var.machine_type
  max_workers                  = var.max_workers
  name                         = var.name
  network_name                 = var.network_name
  on_delete                    = var.on_delete
  parameters                   = var.parameters
  project_id                   = var.project_id
  region                       = var.region
  service_account_email        = var.service_account_email
  skip_wait_on_job_termination = var.skip_wait_on_job_termination
  subnetwork                   = var.subnetwork
  temp_gcs_location            = var.temp_gcs_location
  template_gcs_path            = var.template_gcs_path
  use_public_ips               = var.use_public_ips
}
