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

module "kubernetes-engine_fleet-app-operator-permissions" {
  source           = "terraform-google-modules/kubernetes-engine/google//modules/fleet-app-operator-permissions"
  version          = "40.0.0"
  custom_role      = var.custom_role
  fleet_project_id = var.fleet_project_id
  groups           = var.groups
  role             = var.role
  scope_id         = var.scope_id
  users            = var.users
}
