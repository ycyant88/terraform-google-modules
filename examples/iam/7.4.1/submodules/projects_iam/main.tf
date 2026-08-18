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

module "iam_projects_iam" {
  source               = "terraform-google-modules/iam/google//modules/projects_iam"
  version              = "7.4.1"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  mode                 = var.mode
  projects             = var.projects
}
