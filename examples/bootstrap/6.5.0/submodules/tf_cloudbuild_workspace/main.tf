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

module "bootstrap_tf_cloudbuild_workspace" {
  source                    = "terraform-google-modules/bootstrap/google//modules/tf_cloudbuild_workspace"
  version                   = "6.5.0"
  artifacts_bucket_name     = var.artifacts_bucket_name
  buckets_force_destroy     = var.buckets_force_destroy
  cloudbuild_apply_filename = var.cloudbuild_apply_filename
  cloudbuild_env_vars       = var.cloudbuild_env_vars
  cloudbuild_ignored_files  = var.cloudbuild_ignored_files
  cloudbuild_included_files = var.cloudbuild_included_files
  cloudbuild_plan_filename  = var.cloudbuild_plan_filename
  cloudbuild_sa             = var.cloudbuild_sa
  cloudbuild_sa_roles       = var.cloudbuild_sa_roles
  create_cloudbuild_sa      = var.create_cloudbuild_sa
  create_cloudbuild_sa_name = var.create_cloudbuild_sa_name
  create_state_bucket       = var.create_state_bucket
  create_state_bucket_name  = var.create_state_bucket_name
  diff_sa_project           = var.diff_sa_project
  enable_worker_pool        = var.enable_worker_pool
  location                  = var.location
  log_bucket_name           = var.log_bucket_name
  prefix                    = var.prefix
  project_id                = var.project_id
  state_bucket_self_link    = var.state_bucket_self_link
  substitutions             = var.substitutions
  tf_apply_branches         = var.tf_apply_branches
  tf_cloudbuilder           = var.tf_cloudbuilder
  tf_repo_dir               = var.tf_repo_dir
  tf_repo_type              = var.tf_repo_type
  tf_repo_uri               = var.tf_repo_uri
  trigger_location          = var.trigger_location
  worker_pool_id            = var.worker_pool_id
}
