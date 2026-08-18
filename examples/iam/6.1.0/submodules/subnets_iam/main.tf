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

module "iam_subnets_iam" {
  source         = "terraform-google-modules/iam/google//modules/subnets_iam"
  version        = "6.1.0"
  bindings       = var.bindings
  mode           = var.mode
  project        = var.project
  subnets        = var.subnets
  subnets_region = var.subnets_region
}
