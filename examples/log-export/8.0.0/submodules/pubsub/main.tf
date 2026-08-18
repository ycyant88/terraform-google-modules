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
  version                  = "8.0.0"
  create_push_subscriber   = var.create_push_subscriber
  create_subscriber        = var.create_subscriber
  kms_key_name             = var.kms_key_name
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
  push_endpoint            = var.push_endpoint
  subscriber_id            = var.subscriber_id
  subscription_labels      = var.subscription_labels
  topic_labels             = var.topic_labels
  topic_name               = var.topic_name
}
