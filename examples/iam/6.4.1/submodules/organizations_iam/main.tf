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

module "iam_organizations_iam" {
  source               = "terraform-google-modules/iam/google//modules/organizations_iam"
  version              = "6.4.1"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  mode                 = var.mode
  organizations        = var.organizations
}
