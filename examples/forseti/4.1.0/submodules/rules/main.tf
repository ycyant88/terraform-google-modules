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

module "forseti_rules" {
  source  = "terraform-google-modules/forseti/google//modules/rules"
  version = "4.1.0"
  bucket  = var.bucket
  domain  = var.domain
  org_id  = var.org_id
}
