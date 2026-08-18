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

module "cloud-storage_simple_bucket" {
  source             = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version            = "3.0.0"
  bucket_policy_only = var.bucket_policy_only
  cors               = var.cors
  encryption         = var.encryption
  force_destroy      = var.force_destroy
  iam_members        = var.iam_members
  labels             = var.labels
  lifecycle_rules    = var.lifecycle_rules
  location           = var.location
  log_bucket         = var.log_bucket
  log_object_prefix  = var.log_object_prefix
  name               = var.name
  project_id         = var.project_id
  retention_policy   = var.retention_policy
  storage_class      = var.storage_class
  versioning         = var.versioning
}
