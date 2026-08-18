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

module "service-accounts_key-distributor" {
  source           = "terraform-google-modules/service-accounts/google//modules/key-distributor"
  version          = "4.2.3"
  folder_ids       = var.folder_ids
  function_members = var.function_members
  function_name    = var.function_name
  org_id           = var.org_id
  project_id       = var.project_id
  project_ids      = var.project_ids
  public_key_file  = var.public_key_file
  region           = var.region
}
