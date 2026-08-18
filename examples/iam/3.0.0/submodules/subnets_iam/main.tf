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
  version        = "3.0.0"
  bindings       = var.bindings
  bindings_num   = var.bindings_num
  mode           = var.mode
  project        = var.project
  subnets        = var.subnets
  subnets_num    = var.subnets_num
  subnets_region = var.subnets_region
}
