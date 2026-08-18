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
  version                      = "12.0.0"
  bucket_name                  = var.bucket_name
  build_timeout                = var.build_timeout
  cb_logs_bucket_force_destroy = var.cb_logs_bucket_force_destroy
  cloudbuild_sa                = var.cloudbuild_sa
  dockerfile_repo_dir          = var.dockerfile_repo_dir
  dockerfile_repo_ref          = var.dockerfile_repo_ref
  dockerfile_repo_type         = var.dockerfile_repo_type
  dockerfile_repo_uri          = var.dockerfile_repo_uri
  enable_worker_pool           = var.enable_worker_pool
  gar_repo_location            = var.gar_repo_location
  gar_repo_name                = var.gar_repo_name
  image_name                   = var.image_name
  project_id                   = var.project_id
  terraform_version            = var.terraform_version
  trigger_location             = var.trigger_location
  trigger_name                 = var.trigger_name
  use_cloudbuildv2_repository  = var.use_cloudbuildv2_repository
  worker_pool_id               = var.worker_pool_id
  workflow_deletion_protection = var.workflow_deletion_protection
  workflow_name                = var.workflow_name
  workflow_region              = var.workflow_region
  workflow_sa                  = var.workflow_sa
  workflow_schedule            = var.workflow_schedule
}
