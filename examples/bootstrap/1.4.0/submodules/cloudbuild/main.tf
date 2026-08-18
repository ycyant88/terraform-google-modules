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

module "bootstrap_cloudbuild" {
  source                      = "terraform-google-modules/bootstrap/google//modules/cloudbuild"
  version                     = "1.4.0"
  activate_apis               = var.activate_apis
  billing_account             = var.billing_account
  cloud_source_repos          = var.cloud_source_repos
  cloudbuild_apply_filename   = var.cloudbuild_apply_filename
  cloudbuild_plan_filename    = var.cloudbuild_plan_filename
  default_region              = var.default_region
  folder_id                   = var.folder_id
  group_org_admins            = var.group_org_admins
  org_id                      = var.org_id
  project_labels              = var.project_labels
  project_prefix              = var.project_prefix
  sa_enable_impersonation     = var.sa_enable_impersonation
  skip_gcloud_download        = var.skip_gcloud_download
  storage_bucket_labels       = var.storage_bucket_labels
  terraform_apply_branches    = var.terraform_apply_branches
  terraform_sa_email          = var.terraform_sa_email
  terraform_sa_name           = var.terraform_sa_name
  terraform_state_bucket      = var.terraform_state_bucket
  terraform_validator_release = var.terraform_validator_release
  terraform_version           = var.terraform_version
  terraform_version_sha256sum = var.terraform_version_sha256sum
}
