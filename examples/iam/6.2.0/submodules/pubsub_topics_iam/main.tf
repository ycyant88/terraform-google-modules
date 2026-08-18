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

module "iam_pubsub_topics_iam" {
  source        = "terraform-google-modules/iam/google//modules/pubsub_topics_iam"
  version       = "6.2.0"
  bindings      = var.bindings
  mode          = var.mode
  project       = var.project
  pubsub_topics = var.pubsub_topics
}
