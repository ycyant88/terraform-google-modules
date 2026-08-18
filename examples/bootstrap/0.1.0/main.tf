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
  version                        = "0.1.0"
  activate_apis                  = var.activate_apis
  billing_account                = var.billing_account
  default_region                 = var.default_region
  folder_id                      = var.folder_id
  group_billing_admins           = var.group_billing_admins
  group_org_admins               = var.group_org_admins
  org_admins_org_iam_permissions = var.org_admins_org_iam_permissions
  org_id                         = var.org_id
  org_project_creators           = var.org_project_creators
  project_prefix                 = var.project_prefix
  sa_enable_impersonation        = var.sa_enable_impersonation
  sa_org_iam_permissions         = var.sa_org_iam_permissions
}
