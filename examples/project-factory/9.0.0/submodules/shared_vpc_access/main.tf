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

module "project-factory_shared_vpc_access" {
  source             = "terraform-google-modules/project-factory/google//modules/shared_vpc_access"
  version            = "9.0.0"
  active_apis        = var.active_apis
  host_project_id    = var.host_project_id
  service_project_id = var.service_project_id
  shared_vpc_subnets = var.shared_vpc_subnets
}
