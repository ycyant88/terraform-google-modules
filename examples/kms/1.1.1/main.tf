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
  source              = "terraform-google-modules/kms/google"
  version             = "1.1.1"
  decrypters          = var.decrypters
  encrypters          = var.encrypters
  key_rotation_period = var.key_rotation_period
  keyring             = var.keyring
  keys                = var.keys
  location            = var.location
  owners              = var.owners
  prevent_destroy     = var.prevent_destroy
  project_id          = var.project_id
  set_decrypters_for  = var.set_decrypters_for
  set_encrypters_for  = var.set_encrypters_for
  set_owners_for      = var.set_owners_for
}
