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

module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "1.0.0"
  bindings             = var.bindings
  folders              = var.folders
  kms_crypto_keys      = var.kms_crypto_keys
  kms_key_rings        = var.kms_key_rings
  mode                 = var.mode
  organizations        = var.organizations
  project              = var.project
  projects             = var.projects
  pubsub_subscriptions = var.pubsub_subscriptions
  pubsub_topics        = var.pubsub_topics
  service_accounts     = var.service_accounts
  storage_buckets      = var.storage_buckets
  subnets              = var.subnets
}
