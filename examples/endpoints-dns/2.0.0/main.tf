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

module "endpoints-dns" {
  source          = "terraform-google-modules/endpoints-dns/google"
  version         = "2.0.0"
  ensure_undelete = var.ensure_undelete
  external_ip     = var.external_ip
  name            = var.name
  project         = var.project
}
