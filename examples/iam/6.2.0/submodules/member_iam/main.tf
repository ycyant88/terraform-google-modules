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

module "iam_member_iam" {
  source                  = "terraform-google-modules/iam/google//modules/member_iam"
  version                 = "6.2.0"
  prefix                  = var.prefix
  project_id              = var.project_id
  project_roles           = var.project_roles
  service_account_address = var.service_account_address
}
