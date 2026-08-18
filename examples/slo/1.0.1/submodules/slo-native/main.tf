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

module "slo_slo-native" {
  source  = "terraform-google-modules/slo/google//modules/slo-native"
  version = "1.0.1"
  config  = var.config
}
