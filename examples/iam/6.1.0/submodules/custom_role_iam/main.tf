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

module "iam_custom_role_iam" {
  source       = "terraform-google-modules/iam/google//modules/custom_role_iam"
  version      = "6.1.0"
  description  = var.description
  members      = var.members
  permissions  = var.permissions
  role_id      = var.role_id
  stage        = var.stage
  target_id    = var.target_id
  target_level = var.target_level
  title        = var.title
}
