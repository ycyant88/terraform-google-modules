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
  source                             = "terraform-google-modules/project-factory/google//modules/shared_vpc_access"
  version                            = "11.1.0"
  active_apis                        = var.active_apis
  enable_shared_vpc_service_project  = var.enable_shared_vpc_service_project
  grant_services_security_admin_role = var.grant_services_security_admin_role
  host_project_id                    = var.host_project_id
  lookup_project_numbers             = var.lookup_project_numbers
  service_project_id                 = var.service_project_id
  service_project_number             = var.service_project_number
  shared_vpc_subnets                 = var.shared_vpc_subnets
}
