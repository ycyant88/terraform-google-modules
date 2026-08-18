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

module "github-actions-runners_gh-runner-gke" {
  source                  = "terraform-google-modules/github-actions-runners/google//modules/gh-runner-gke"
  version                 = "2.0.1"
  create_network          = var.create_network
  gh_token                = var.gh_token
  ip_range_pods_cidr      = var.ip_range_pods_cidr
  ip_range_pods_name      = var.ip_range_pods_name
  ip_range_services_cider = var.ip_range_services_cider
  ip_range_services_name  = var.ip_range_services_name
  machine_type            = var.machine_type
  max_node_count          = var.max_node_count
  min_node_count          = var.min_node_count
  network_name            = var.network_name
  project_id              = var.project_id
  region                  = var.region
  repo_name               = var.repo_name
  repo_owner              = var.repo_owner
  repo_url                = var.repo_url
  runner_k8s_config       = var.runner_k8s_config
  service_account         = var.service_account
  subnet_ip               = var.subnet_ip
  subnet_name             = var.subnet_name
  subnetwork_project      = var.subnetwork_project
  zones                   = var.zones
}
