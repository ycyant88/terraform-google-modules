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

module "vm" {
  source  = "terraform-google-modules/vm/google"
  version = "13.0.1"
}
