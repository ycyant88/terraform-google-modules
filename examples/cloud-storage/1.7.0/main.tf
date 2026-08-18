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
  source               = "terraform-google-modules/cloud-storage/google"
  version              = "1.7.0"
  admins               = var.admins
  bucket_admins        = var.bucket_admins
  bucket_creators      = var.bucket_creators
  bucket_policy_only   = var.bucket_policy_only
  bucket_viewers       = var.bucket_viewers
  cors                 = var.cors
  creators             = var.creators
  encryption_key_names = var.encryption_key_names
  folders              = var.folders
  force_destroy        = var.force_destroy
  labels               = var.labels
  lifecycle_rules      = var.lifecycle_rules
  location             = var.location
  names                = var.names
  prefix               = var.prefix
  project_id           = var.project_id
  set_admin_roles      = var.set_admin_roles
  set_creator_roles    = var.set_creator_roles
  set_viewer_roles     = var.set_viewer_roles
  storage_class        = var.storage_class
  versioning           = var.versioning
  viewers              = var.viewers
  website              = var.website
}
