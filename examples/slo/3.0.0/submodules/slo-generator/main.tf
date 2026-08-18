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

module "slo_slo-generator" {
  source                   = "terraform-google-modules/slo/google//modules/slo-generator"
  version                  = "3.0.0"
  additional_project_roles = var.additional_project_roles
  annotations              = var.annotations
  authorized_members       = var.authorized_members
  bucket_name              = var.bucket_name
  concurrency              = var.concurrency
  config                   = var.config
  create_cloud_schedulers  = var.create_cloud_schedulers
  create_iam_roles         = var.create_iam_roles
  create_service           = var.create_service
  env                      = var.env
  gcr_project_id           = var.gcr_project_id
  ingress                  = var.ingress
  labels                   = var.labels
  limits                   = var.limits
  project_id               = var.project_id
  pubsub_topic_name        = var.pubsub_topic_name
  region                   = var.region
  requests                 = var.requests
  schedule                 = var.schedule
  secrets                  = var.secrets
  service_account_email    = var.service_account_email
  service_name             = var.service_name
  service_url              = var.service_url
  signature_type           = var.signature_type
  slo_configs              = var.slo_configs
  slo_generator_version    = var.slo_generator_version
  target                   = var.target
}
