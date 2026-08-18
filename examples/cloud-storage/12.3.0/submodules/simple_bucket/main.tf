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
  source                     = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version                    = "12.3.0"
  autoclass                  = var.autoclass
  bucket_policy_only         = var.bucket_policy_only
  cors                       = var.cors
  custom_placement_config    = var.custom_placement_config
  encryption                 = var.encryption
  force_destroy              = var.force_destroy
  hierarchical_namespace     = var.hierarchical_namespace
  iam_members                = var.iam_members
  internal_encryption_config = var.internal_encryption_config
  ip_filter                  = var.ip_filter
  labels                     = var.labels
  lifecycle_rules            = var.lifecycle_rules
  location                   = var.location
  log_bucket                 = var.log_bucket
  log_object_prefix          = var.log_object_prefix
  name                       = var.name
  project_id                 = var.project_id
  public_access_prevention   = var.public_access_prevention
  retention_policy           = var.retention_policy
  soft_delete_policy         = var.soft_delete_policy
  storage_class              = var.storage_class
  versioning                 = var.versioning
  website                    = var.website
}
