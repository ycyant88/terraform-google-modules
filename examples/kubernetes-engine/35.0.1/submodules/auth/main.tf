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

module "kubernetes-engine_auth" {
  source               = "terraform-google-modules/kubernetes-engine/google//modules/auth"
  version              = "35.0.1"
  cluster_name         = var.cluster_name
  location             = var.location
  project_id           = var.project_id
  use_private_endpoint = var.use_private_endpoint
}
