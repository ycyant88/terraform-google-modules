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

module "network_vpc-serverless-connector-beta" {
  source         = "terraform-google-modules/network/google//modules/vpc-serverless-connector-beta"
  version        = "13.1.0"
  project_id     = var.project_id
  vpc_connectors = var.vpc_connectors
}
