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

module "pubsub" {
  source             = "terraform-google-modules/pubsub/google"
  version            = "1.0.0"
  project_id         = var.project_id
  pull_subscriptions = var.pull_subscriptions
  push_subscriptions = var.push_subscriptions
  topic              = var.topic
}
