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
  source                            = "terraform-google-modules/iam/google"
  version                           = "3.0.0"
  folders                           = var.folders
  folders_bindings                  = var.folders_bindings
  folders_bindings_num              = var.folders_bindings_num
  folders_mode                      = var.folders_mode
  folders_num                       = var.folders_num
  kms_crypto_keys                   = var.kms_crypto_keys
  kms_crypto_keys_bindings          = var.kms_crypto_keys_bindings
  kms_crypto_keys_bindings_num      = var.kms_crypto_keys_bindings_num
  kms_crypto_keys_mode              = var.kms_crypto_keys_mode
  kms_crypto_keys_num               = var.kms_crypto_keys_num
  kms_key_rings                     = var.kms_key_rings
  kms_key_rings_bindings            = var.kms_key_rings_bindings
  kms_key_rings_bindings_num        = var.kms_key_rings_bindings_num
  kms_key_rings_mode                = var.kms_key_rings_mode
  kms_key_rings_num                 = var.kms_key_rings_num
  organizations                     = var.organizations
  organizations_bindings            = var.organizations_bindings
  organizations_bindings_num        = var.organizations_bindings_num
  organizations_mode                = var.organizations_mode
  organizations_num                 = var.organizations_num
  project                           = var.project
  projects                          = var.projects
  projects_bindings                 = var.projects_bindings
  projects_bindings_num             = var.projects_bindings_num
  projects_mode                     = var.projects_mode
  projects_num                      = var.projects_num
  pubsub_subscriptions              = var.pubsub_subscriptions
  pubsub_subscriptions_bindings     = var.pubsub_subscriptions_bindings
  pubsub_subscriptions_bindings_num = var.pubsub_subscriptions_bindings_num
  pubsub_subscriptions_mode         = var.pubsub_subscriptions_mode
  pubsub_subscriptions_num          = var.pubsub_subscriptions_num
  pubsub_topics                     = var.pubsub_topics
  pubsub_topics_bindings            = var.pubsub_topics_bindings
  pubsub_topics_bindings_num        = var.pubsub_topics_bindings_num
  pubsub_topics_mode                = var.pubsub_topics_mode
  pubsub_topics_num                 = var.pubsub_topics_num
  service_accounts                  = var.service_accounts
  service_accounts_bindings         = var.service_accounts_bindings
  service_accounts_bindings_num     = var.service_accounts_bindings_num
  service_accounts_mode             = var.service_accounts_mode
  service_accounts_num              = var.service_accounts_num
  storage_buckets                   = var.storage_buckets
  storage_buckets_bindings          = var.storage_buckets_bindings
  storage_buckets_bindings_num      = var.storage_buckets_bindings_num
  storage_buckets_mode              = var.storage_buckets_mode
  storage_buckets_num               = var.storage_buckets_num
  subnets                           = var.subnets
  subnets_bindings                  = var.subnets_bindings
  subnets_bindings_num              = var.subnets_bindings_num
  subnets_mode                      = var.subnets_mode
  subnets_num                       = var.subnets_num
  subnets_region                    = var.subnets_region
}
