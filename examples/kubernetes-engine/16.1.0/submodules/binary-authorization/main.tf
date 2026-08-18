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

module "kubernetes-engine_binary-authorization" {
  source                      = "terraform-google-modules/kubernetes-engine/google//modules/binary-authorization"
  version                     = "16.1.0"
  attestor-name               = var.attestor-name
  crypto-algorithm            = var.crypto-algorithm
  disable_dependent_services  = var.disable_dependent_services
  disable_services_on_destroy = var.disable_services_on_destroy
  keyring-id                  = var.keyring-id
  project_id                  = var.project_id
}
