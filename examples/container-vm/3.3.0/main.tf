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
  source           = "terraform-google-modules/container-vm/google"
  version          = "3.3.0"
  container        = var.container
  cos_image_family = var.cos_image_family
  cos_image_name   = var.cos_image_name
  cos_project      = var.cos_project
  restart_policy   = var.restart_policy
  volumes          = var.volumes
}
