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
  source                         = "terraform-google-modules/kms/google"
  version                        = "4.1.0"
  crypto_key_backend             = var.crypto_key_backend
  decrypters                     = var.decrypters
  encrypters                     = var.encrypters
  import_only                    = var.import_only
  key_algorithm                  = var.key_algorithm
  key_destroy_scheduled_duration = var.key_destroy_scheduled_duration
  key_protection_level           = var.key_protection_level
  key_rotation_period            = var.key_rotation_period
  keyring                        = var.keyring
  keys                           = var.keys
  labels                         = var.labels
  location                       = var.location
  owners                         = var.owners
  prevent_destroy                = var.prevent_destroy
  project_id                     = var.project_id
  purpose                        = var.purpose
  set_decrypters_for             = var.set_decrypters_for
  set_encrypters_for             = var.set_encrypters_for
  set_owners_for                 = var.set_owners_for
  skip_initial_version_creation  = var.skip_initial_version_creation
}
