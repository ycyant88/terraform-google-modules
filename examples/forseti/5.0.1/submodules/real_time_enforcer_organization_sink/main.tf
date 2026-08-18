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

module "forseti_real_time_enforcer_organization_sink" {
  source            = "terraform-google-modules/forseti/google//modules/real_time_enforcer_organization_sink"
  version           = "5.0.1"
  org_id            = var.org_id
  pubsub_project_id = var.pubsub_project_id
}
