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

module "kubernetes-engine_fleet-membership" {
  source                    = "terraform-google-modules/kubernetes-engine/google//modules/fleet-membership"
  version                   = "21.0.0"
  cluster_name              = var.cluster_name
  enable_fleet_registration = var.enable_fleet_registration
  hub_project_id            = var.hub_project_id
  location                  = var.location
  membership_name           = var.membership_name
  project_id                = var.project_id
}
