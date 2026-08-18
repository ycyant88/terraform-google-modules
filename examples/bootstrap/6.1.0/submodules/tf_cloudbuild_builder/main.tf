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

module "bootstrap_tf_cloudbuild_builder" {
  source                       = "terraform-google-modules/bootstrap/google//modules/tf_cloudbuild_builder"
  version                      = "6.1.0"
  cb_logs_bucket_force_destroy = var.cb_logs_bucket_force_destroy
  cloudbuild_sa                = var.cloudbuild_sa
  dockerfile_repo_dir          = var.dockerfile_repo_dir
  dockerfile_repo_ref          = var.dockerfile_repo_ref
  dockerfile_repo_type         = var.dockerfile_repo_type
  dockerfile_repo_uri          = var.dockerfile_repo_uri
  gar_repo_location            = var.gar_repo_location
  gar_repo_name                = var.gar_repo_name
  image_name                   = var.image_name
  project_id                   = var.project_id
  trigger_name                 = var.trigger_name
  workflow_name                = var.workflow_name
  workflow_region              = var.workflow_region
  workflow_sa                  = var.workflow_sa
  workflow_schedule            = var.workflow_schedule
}
