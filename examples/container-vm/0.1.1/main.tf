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

module "container-vm" {
  source         = "terraform-google-modules/container-vm/google"
  version        = "0.1.1"
  container      = var.container
  restart_policy = var.restart_policy
  volumes        = var.volumes
}
