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

module "org-policy_restrict_vm_external_ips" {
  source           = "terraform-google-modules/org-policy/google//modules/restrict_vm_external_ips"
  version          = "7.0.0"
  exclude_folders  = var.exclude_folders
  exclude_projects = var.exclude_projects
  folder_id        = var.folder_id
  organization_id  = var.organization_id
  policy_for       = var.policy_for
  project_id       = var.project_id
  vms_to_allow     = var.vms_to_allow
}
