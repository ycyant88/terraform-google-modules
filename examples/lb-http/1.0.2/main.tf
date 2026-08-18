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

module "lb-http" {
  source         = "terraform-google-modules/lb-http/google"
  version        = "1.0.2"
  backend_params = var.backend_params
  backends       = var.backends
  certificate    = var.certificate
  create_url_map = var.create_url_map
  name           = var.name
  network        = var.network
  private_key    = var.private_key
  project        = var.project
  region         = var.region
  ssl            = var.ssl
  target_tags    = var.target_tags
  url_map        = var.url_map
}
