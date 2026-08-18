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

module "bootstrap" {
  source                         = "terraform-google-modules/bootstrap/google"
  version                        = "6.3.0"
  activate_apis                  = var.activate_apis
  billing_account                = var.billing_account
  create_terraform_sa            = var.create_terraform_sa
  default_region                 = var.default_region
  encrypt_gcs_bucket_tfstate     = var.encrypt_gcs_bucket_tfstate
  folder_id                      = var.folder_id
  force_destroy                  = var.force_destroy
  grant_billing_user             = var.grant_billing_user
  group_billing_admins           = var.group_billing_admins
  group_org_admins               = var.group_org_admins
  key_protection_level           = var.key_protection_level
  key_rotation_period            = var.key_rotation_period
  kms_prevent_destroy            = var.kms_prevent_destroy
  org_admins_org_iam_permissions = var.org_admins_org_iam_permissions
  org_id                         = var.org_id
  org_project_creators           = var.org_project_creators
  parent_folder                  = var.parent_folder
  project_id                     = var.project_id
  project_labels                 = var.project_labels
  project_prefix                 = var.project_prefix
  random_suffix                  = var.random_suffix
  sa_enable_impersonation        = var.sa_enable_impersonation
  sa_org_iam_permissions         = var.sa_org_iam_permissions
  state_bucket_name              = var.state_bucket_name
  storage_bucket_labels          = var.storage_bucket_labels
  tf_service_account_id          = var.tf_service_account_id
  tf_service_account_name        = var.tf_service_account_name
}
