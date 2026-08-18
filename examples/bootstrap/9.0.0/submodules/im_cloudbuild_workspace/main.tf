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

module "bootstrap_im_cloudbuild_workspace" {
  source                                      = "terraform-google-modules/bootstrap/google//modules/im_cloudbuild_workspace"
  version                                     = "9.0.0"
  cloudbuild_apply_filename                   = var.cloudbuild_apply_filename
  cloudbuild_ignored_files                    = var.cloudbuild_ignored_files
  cloudbuild_included_files                   = var.cloudbuild_included_files
  cloudbuild_preview_filename                 = var.cloudbuild_preview_filename
  cloudbuild_sa                               = var.cloudbuild_sa
  custom_cloudbuild_sa_name                   = var.custom_cloudbuild_sa_name
  custom_infra_manager_sa_name                = var.custom_infra_manager_sa_name
  deployment_id                               = var.deployment_id
  github_app_installation_id                  = var.github_app_installation_id
  github_pat_secret                           = var.github_pat_secret
  github_pat_secret_version                   = var.github_pat_secret_version
  github_personal_access_token                = var.github_personal_access_token
  gitlab_api_access_token                     = var.gitlab_api_access_token
  gitlab_api_access_token_secret              = var.gitlab_api_access_token_secret
  gitlab_api_access_token_secret_version      = var.gitlab_api_access_token_secret_version
  gitlab_host_uri                             = var.gitlab_host_uri
  gitlab_read_api_access_token                = var.gitlab_read_api_access_token
  gitlab_read_api_access_token_secret         = var.gitlab_read_api_access_token_secret
  gitlab_read_api_access_token_secret_version = var.gitlab_read_api_access_token_secret_version
  host_connection_name                        = var.host_connection_name
  im_deployment_ref                           = var.im_deployment_ref
  im_deployment_repo_dir                      = var.im_deployment_repo_dir
  im_deployment_repo_uri                      = var.im_deployment_repo_uri
  im_tf_variables                             = var.im_tf_variables
  infra_manager_sa                            = var.infra_manager_sa
  infra_manager_sa_roles                      = var.infra_manager_sa_roles
  location                                    = var.location
  project_id                                  = var.project_id
  pull_request_comment_control                = var.pull_request_comment_control
  repo_connection_name                        = var.repo_connection_name
  substitutions                               = var.substitutions
  tf_cloudbuilder                             = var.tf_cloudbuilder
  tf_repo_type                                = var.tf_repo_type
  tf_version                                  = var.tf_version
  trigger_location                            = var.trigger_location
}
