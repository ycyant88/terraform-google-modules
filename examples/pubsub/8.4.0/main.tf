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
  source                            = "terraform-google-modules/pubsub/google"
  version                           = "8.4.0"
  bigquery_subscriptions            = var.bigquery_subscriptions
  cloud_storage_subscriptions       = var.cloud_storage_subscriptions
  create_subscriptions              = var.create_subscriptions
  create_topic                      = var.create_topic
  grant_bigquery_project_roles      = var.grant_bigquery_project_roles
  grant_cloud_storage_project_roles = var.grant_cloud_storage_project_roles
  grant_token_creator               = var.grant_token_creator
  message_storage_policy            = var.message_storage_policy
  project_id                        = var.project_id
  pull_subscriptions                = var.pull_subscriptions
  push_subscriptions                = var.push_subscriptions
  schema                            = var.schema
  subscription_labels               = var.subscription_labels
  topic                             = var.topic
  topic_kms_key_name                = var.topic_kms_key_name
  topic_labels                      = var.topic_labels
  topic_message_retention_duration  = var.topic_message_retention_duration
}
