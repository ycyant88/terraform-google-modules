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

module "kms" {
  source               = "terraform-google-modules/kms/google"
  version              = "2.2.0"
  decrypters           = var.decrypters
  encrypters           = var.encrypters
  key_algorithm        = var.key_algorithm
  key_protection_level = var.key_protection_level
  key_rotation_period  = var.key_rotation_period
  keyring              = var.keyring
  keys                 = var.keys
  labels               = var.labels
  location             = var.location
  owners               = var.owners
  prevent_destroy      = var.prevent_destroy
  project_id           = var.project_id
  purpose              = var.purpose
  set_decrypters_for   = var.set_decrypters_for
  set_encrypters_for   = var.set_encrypters_for
  set_owners_for       = var.set_owners_for
}
