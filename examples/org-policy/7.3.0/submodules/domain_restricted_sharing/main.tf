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

module "org-policy_domain_restricted_sharing" {
  source                = "terraform-google-modules/org-policy/google//modules/domain_restricted_sharing"
  version               = "7.3.0"
  domains_to_allow      = var.domains_to_allow
  exclude_folders       = var.exclude_folders
  exclude_projects      = var.exclude_projects
  folder_id             = var.folder_id
  organization_id       = var.organization_id
  policy_for            = var.policy_for
  principal_set_org_ids = var.principal_set_org_ids
  project_id            = var.project_id
}
