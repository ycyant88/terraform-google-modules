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

module "github-actions-runners" {
  source  = "terraform-google-modules/github-actions-runners/google"
  version = "2.0.1"
}
