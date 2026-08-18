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

module "forseti_real_time_enforcer_roles" {
  source  = "terraform-google-modules/forseti/google//modules/real_time_enforcer_roles"
  version = "5.2.1"
  org_id  = var.org_id
  suffix  = var.suffix
}
