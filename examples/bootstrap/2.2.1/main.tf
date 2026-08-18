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
  version                        = "2.2.1"
  activate_apis                  = var.activate_apis
  billing_account                = var.billing_account
  default_region                 = var.default_region
  folder_id                      = var.folder_id
  grant_billing_user             = var.grant_billing_user
  group_billing_admins           = var.group_billing_admins
  group_org_admins               = var.group_org_admins
  org_admins_org_iam_permissions = var.org_admins_org_iam_permissions
  org_id                         = var.org_id
  org_project_creators           = var.org_project_creators
  parent_folder                  = var.parent_folder
  project_id                     = var.project_id
  project_labels                 = var.project_labels
  project_prefix                 = var.project_prefix
  sa_enable_impersonation        = var.sa_enable_impersonation
  sa_org_iam_permissions         = var.sa_org_iam_permissions
  state_bucket_name              = var.state_bucket_name
  storage_bucket_labels          = var.storage_bucket_labels
}
