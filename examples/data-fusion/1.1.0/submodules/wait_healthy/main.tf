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

module "data-fusion_wait_healthy" {
  source           = "terraform-google-modules/data-fusion/google//modules/wait_healthy"
  version          = "1.1.0"
  access_token     = var.access_token
  service_endpoint = var.service_endpoint
}
