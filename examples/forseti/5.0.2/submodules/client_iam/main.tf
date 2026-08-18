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

module "forseti_client_iam" {
  source     = "terraform-google-modules/forseti/google//modules/client_iam"
  version    = "5.0.2"
  project_id = var.project_id
  suffix     = var.suffix
}
