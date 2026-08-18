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

module "org-policy_org_policy_v2" {
  source           = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version          = "5.2.2"
  constraint       = var.constraint
  exclude_folders  = var.exclude_folders
  exclude_projects = var.exclude_projects
  policy_root      = var.policy_root
  policy_root_id   = var.policy_root_id
  policy_type      = var.policy_type
  rules            = var.rules
}
