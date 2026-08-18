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

module "vpc-service-controls" {
  source      = "terraform-google-modules/vpc-service-controls/google"
  version     = "6.0.0"
  parent_id   = var.parent_id
  policy_name = var.policy_name
}
