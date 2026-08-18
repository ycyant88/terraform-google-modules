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

module "forseti_real_time_enforcer_project_sink" {
  source            = "terraform-google-modules/forseti/google//modules/real_time_enforcer_project_sink"
  version           = "5.0.0"
  pubsub_project_id = var.pubsub_project_id
  sink_project_id   = var.sink_project_id
}
