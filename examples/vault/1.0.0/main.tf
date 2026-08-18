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

module "vault" {
  source               = "terraform-google-modules/vault/google"
  version              = "1.0.0"
  force_destroy_bucket = var.force_destroy_bucket
  kms_key_name         = var.kms_key_name
  kms_keyring_name     = var.kms_keyring_name
  machine_type         = var.machine_type
  network              = var.network
  project_id           = var.project_id
  region               = var.region
  storage_bucket       = var.storage_bucket
  subnetwork           = var.subnetwork
  tls_ca_subject       = var.tls_ca_subject
  tls_cn               = var.tls_cn
  tls_dns_names        = var.tls_dns_names
  tls_ips              = var.tls_ips
  tls_ou               = var.tls_ou
  vault_args           = var.vault_args
  vault_version        = var.vault_version
  zone                 = var.zone
}
