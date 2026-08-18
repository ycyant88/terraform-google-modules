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

module "folders" {
  source             = "terraform-google-modules/folders/google"
  version            = "1.0.0"
  all_folder_admins  = var.all_folder_admins
  folder_admin_roles = var.folder_admin_roles
  names              = var.names
  parent_id          = var.parent_id
  parent_type        = var.parent_type
  per_folder_admins  = var.per_folder_admins
  prefix             = var.prefix
  set_roles          = var.set_roles
}
