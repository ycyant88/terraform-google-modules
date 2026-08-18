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

module "project-factory_gsuite_group" {
  source  = "terraform-google-modules/project-factory/google//modules/gsuite_group"
  version = "10.1.0"
  domain  = var.domain
  name    = var.name
  org_id  = var.org_id
}
