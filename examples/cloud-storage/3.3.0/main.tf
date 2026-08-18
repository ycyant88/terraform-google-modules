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

module "cloud-storage" {
  source                   = "terraform-google-modules/cloud-storage/google"
  version                  = "3.3.0"
  admins                   = var.admins
  bucket_admins            = var.bucket_admins
  bucket_creators          = var.bucket_creators
  bucket_hmac_key_admins   = var.bucket_hmac_key_admins
  bucket_policy_only       = var.bucket_policy_only
  bucket_storage_admins    = var.bucket_storage_admins
  bucket_viewers           = var.bucket_viewers
  cors                     = var.cors
  creators                 = var.creators
  default_event_based_hold = var.default_event_based_hold
  encryption_key_names     = var.encryption_key_names
  folders                  = var.folders
  force_destroy            = var.force_destroy
  hmac_key_admins          = var.hmac_key_admins
  labels                   = var.labels
  lifecycle_rules          = var.lifecycle_rules
  location                 = var.location
  logging                  = var.logging
  names                    = var.names
  prefix                   = var.prefix
  project_id               = var.project_id
  randomize_suffix         = var.randomize_suffix
  retention_policy         = var.retention_policy
  set_admin_roles          = var.set_admin_roles
  set_creator_roles        = var.set_creator_roles
  set_hmac_key_admin_roles = var.set_hmac_key_admin_roles
  set_storage_admin_roles  = var.set_storage_admin_roles
  set_viewer_roles         = var.set_viewer_roles
  storage_admins           = var.storage_admins
  storage_class            = var.storage_class
  versioning               = var.versioning
  viewers                  = var.viewers
  website                  = var.website
}
