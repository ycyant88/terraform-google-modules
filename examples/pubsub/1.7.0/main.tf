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
  source                 = "terraform-google-modules/pubsub/google"
  version                = "1.7.0"
  create_topic           = var.create_topic
  grant_token_creator    = var.grant_token_creator
  message_storage_policy = var.message_storage_policy
  project_id             = var.project_id
  pull_subscriptions     = var.pull_subscriptions
  push_subscriptions     = var.push_subscriptions
  topic                  = var.topic
  topic_kms_key_name     = var.topic_kms_key_name
  topic_labels           = var.topic_labels
}
