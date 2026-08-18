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

module "org-policy" {
  source           = "terraform-google-modules/org-policy/google"
  version          = "1.0.0"
  allow            = var.allow
  constraint       = var.constraint
  deny             = var.deny
  enforce          = var.enforce
  exclude_folders  = var.exclude_folders
  exclude_projects = var.exclude_projects
  folder_id        = var.folder_id
  organization_id  = var.organization_id
  policy_type      = var.policy_type
  project_id       = var.project_id
}
