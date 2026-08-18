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
  source               = "terraform-google-modules/forseti/google//modules/rules"
  version              = "5.1.2"
  domain               = var.domain
  manage_rules_enabled = var.manage_rules_enabled
  org_id               = var.org_id
  server_gcs_module    = var.server_gcs_module
}
