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

module "iam_helper" {
  source               = "terraform-google-modules/iam/google//modules/helper"
  version              = "7.3.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  entities             = var.entities
  mode                 = var.mode
}
