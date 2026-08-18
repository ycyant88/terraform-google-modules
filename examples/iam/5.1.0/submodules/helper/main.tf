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
  source   = "terraform-google-modules/iam/google//modules/helper"
  version  = "5.1.0"
  bindings = var.bindings
  entities = var.entities
  entity   = var.entity
  mode     = var.mode
}
