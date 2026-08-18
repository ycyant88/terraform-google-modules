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

module "dataflow_flex" {
  source                       = "terraform-google-modules/dataflow/google//modules/flex"
  version                      = "3.0.1"
  additional_experiments       = var.additional_experiments
  autoscaling_algorithm        = var.autoscaling_algorithm
  container_spec_gcs_path      = var.container_spec_gcs_path
  enable_streaming_engine      = var.enable_streaming_engine
  kms_key_name                 = var.kms_key_name
  labels                       = var.labels
  launcher_machine_type        = var.launcher_machine_type
  machine_type                 = var.machine_type
  max_workers                  = var.max_workers
  name                         = var.name
  network_name                 = var.network_name
  on_delete                    = var.on_delete
  parameters                   = var.parameters
  project_id                   = var.project_id
  region                       = var.region
  sdk_container_image          = var.sdk_container_image
  service_account_email        = var.service_account_email
  skip_wait_on_job_termination = var.skip_wait_on_job_termination
  subnetwork                   = var.subnetwork
  temp_location                = var.temp_location
  use_public_ips               = var.use_public_ips
}
