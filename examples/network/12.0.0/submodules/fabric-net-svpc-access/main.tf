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

module "network_fabric-net-svpc-access" {
  source                   = "terraform-google-modules/network/google//modules/fabric-net-svpc-access"
  version                  = "12.0.0"
  host_project_id          = var.host_project_id
  host_service_agent_role  = var.host_service_agent_role
  host_service_agent_users = var.host_service_agent_users
  host_subnet_regions      = var.host_subnet_regions
  host_subnet_users        = var.host_subnet_users
  host_subnets             = var.host_subnets
  service_project_ids      = var.service_project_ids
}
