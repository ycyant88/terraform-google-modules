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

module "log-export_pubsub" {
  source                   = "terraform-google-modules/log-export/google//modules/pubsub"
  version                  = "3.1.0"
  create_subscriber        = var.create_subscriber
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
  topic_labels             = var.topic_labels
  topic_name               = var.topic_name
}
