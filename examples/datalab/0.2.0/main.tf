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

module "datalab" {
  source  = "terraform-google-modules/datalab/google"
  version = "0.2.0"
}
